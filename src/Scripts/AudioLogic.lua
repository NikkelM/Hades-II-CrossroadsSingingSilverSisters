-- Crossfade length (seconds) used when switching between two versions of the same song
local crossFadeDuration = 0.2

-- The version group a song belongs to (the vanilla base song it is a version of), or nil
local function songGroupOf(songName)
	if songName == nil or mod.SongVersionGroup == nil then
		return nil
	end

	return mod.SongVersionGroup[songName]
end

-- Current playback position (seconds) of the tracked grouped song, derived from the game clock
-- Returns nil when nothing is being tracked
local function currentTrackedPosition()
	local startTime = game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_PlaybackPositionZeroTime
	local group = game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_CurrentGroup
	if startTime == nil or group == nil then
		return nil
	end

	local position = game._worldTimeUnmodified - startTime
	local loopLength = mod.SongVersionGroupLoopLength[group]
	if loopLength ~= nil and loopLength > 0 then
		position = position % loopLength
	end
	if position < 0 then
		position = 0
	end

	return position
end

-- Fade the two voice stems of the currently playing event to the requested values
local function applyVocals(soundId, vocals, vocals2)
	SetSoundCueValue({ Id = soundId, Names = { "Vocals" }, Value = vocals, Duration = 1.0 })
	SetSoundCueValue({ Id = soundId, Names = { "Vocals2" }, Value = vocals2, Duration = 1.0 })
end

modutil.mod.Path.Wrap("MusicianMusic", function(base, trackName, args)
	local songName = game.GameState.MusicPlayerSongName
	local newGroup = songGroupOf(songName)

	if game.ContainsAnyKey(mod.ModdedCrossroadsSongs, { songName }) then
		args = args or {}

		local songData = game.WorldUpgradeData[songName]
		local vocals = songData.ModsNikkelMCrossroadsSingingSilverSisters_Vocals
		if vocals == nil then
			vocals = 1
		end
		local vocals2 = songData.ModsNikkelMCrossroadsSingingSilverSisters_Vocals2
		if vocals2 == nil then
			vocals2 = 1
		end

		-- For these lyric songs, we need to have vocals enabled and low pass off in Hub_PreRun
		local customAmbientMusicParams = {
			Params = {
				LowPass = 0,
				Vocals = vocals,
				Vocals2 = vocals2,
			},
		}

		local previousId = game.AudioState.AmbientMusicId
		local previousGroup = game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_CurrentGroup
		-- If we are going to be switching between two songs in the same group
		local sameGroupSwitch = previousId ~= nil and previousGroup ~= nil and previousGroup == newGroup

		-- Same underlying FMOD event: don't restart, just fade the voice stems so the switch only changes who is singing
		if previousId ~= nil and trackName == game.AudioState.AmbientTrackName then
			game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_CurrentSongName = songName
			game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_CurrentGroup = newGroup
			game.UpdateAmbientMusicParameters({ Params = { LowPass = 0 } })
			applyVocals(previousId, vocals, vocals2)
			return
		end

		-- Work out whether we can carry the playback position from the previous version
		local carriedPosition = sameGroupSwitch and currentTrackedPosition() or nil

		if carriedPosition ~= nil then
			-- Same song, different event: crossfade so the switch feels immediate
			-- Both versions are the same arrangement at the same position, so overlapping them briefly holds a constant volume instead of fade-out/silence/fade-in
			local newId = PlaySound({ Name = songData.TrackName, Id = game.CurrentHubRoom.AmbientMusicSourceId })
			SetVolume({ Id = newId, Value = 0, Duration = 0 })
			SetSoundPosition({ Id = newId, Position = carriedPosition })
			SetSoundSource({ Id = newId, DestinationId = game.CurrentHubRoom.AmbientMusicSourceId })
			SetSoundCueValue({ Id = newId, Name = "LowPass", Value = 0 })
			SetSoundCueValue({ Id = newId, Names = { "Guitar", "Bass", "Drums" }, Value = 1 })
			SetSoundCueValue({ Id = newId, Names = { "Vocals" }, Value = vocals })
			SetSoundCueValue({ Id = newId, Names = { "Vocals2" }, Value = vocals2 })
			SetVolume({ Id = newId, Value = game.CurrentHubRoom.AmbientMusicVolume, Duration = crossFadeDuration })
			if previousId ~= nil then
				StopSound({ Id = previousId, Duration = crossFadeDuration })
			end
			game.AudioState.AmbientMusicId = newId
			game.AudioState.AmbientTrackName = trackName
		else
			-- Different song (or first play): quick cut the old track, then start from the beginning (or the song's configured offset) after a short gap to avoid pops
			if previousId ~= nil then
				StopSound({ Id = previousId, Duration = 0.25 })
				game.AudioState.AmbientMusicId = nil
			end
			game.wait(0.3)
			game.AudioState.AmbientMusicId = PlaySound({
				Name = songData.TrackName,
				Id = game.CurrentHubRoom.AmbientMusicSourceId
			})
			game.AudioState.AmbientTrackName = trackName
			SetVolume({ Id = game.AudioState.AmbientMusicId, Value = 0 })
			local startOffset = songData.ModsNikkelMCrossroadsSingingSilverSisters_TrackOffset or 0
			if startOffset ~= 0 then
				SetSoundPosition({ Id = game.AudioState.AmbientMusicId, Position = startOffset })
			end
			game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_PlaybackPositionZeroTime = game._worldTimeUnmodified - startOffset
			game.UpdateAmbientMusicParameters(customAmbientMusicParams)
			SetSoundCueValue({ Id = game.AudioState.AmbientMusicId, Names = { "Guitar", "Bass", "Drums" }, Value = 1, Duration = 1.0 })
			applyVocals(game.AudioState.AmbientMusicId, vocals, vocals2)
		end
		game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_CurrentSongName = songName
		game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_CurrentGroup = newGroup
	else
		-- This is a vanilla song
		-- If it belongs to a version group, keep tracking its position so a later switch to a modded version continues seamlessly
		-- Also carry the position when switching from a modded version back to this vanilla one
		local songData = newGroup ~= nil and game.WorldUpgradeData[songName] or nil
		local isGroupedVanilla = songData ~= nil and trackName == songData.TrackName

		if not isGroupedVanilla then
			base(trackName, args)
			return
		end

		local previousId = game.AudioState.AmbientMusicId
		local previousGroup = game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_CurrentGroup

		-- Base no-ops if this exact track is already playing; keep our tracking intact.
		if previousId ~= nil and trackName == game.AudioState.AmbientTrackName then
			base(trackName, args)
			game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_CurrentSongName = songName
			game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_CurrentGroup = newGroup
			return
		end

		local sameGroupSwitch = previousId ~= nil and previousGroup ~= nil and previousGroup == newGroup
		local carriedPosition = sameGroupSwitch and currentTrackedPosition() or nil

		if carriedPosition ~= nil then
			-- Same song, different event: crossfade to the vanilla version at the carried position so the switch feels immediate, mirroring the modded-song path above
			local newId = PlaySound({ Name = songData.TrackName, Id = game.CurrentHubRoom.AmbientMusicSourceId })
			SetVolume({ Id = newId, Value = 0, Duration = 0 })
			SetSoundPosition({ Id = newId, Position = carriedPosition })
			SetSoundSource({ Id = newId, DestinationId = game.CurrentHubRoom.AmbientMusicSourceId })
			local ambientParams = game.CurrentHubRoom.AmbientMusicParams
			if ambientParams ~= nil then
				for param, value in pairs(ambientParams) do
					SetSoundCueValue({ Id = newId, Name = param, Value = value })
				end
			end
			SetVolume({ Id = newId, Value = game.CurrentHubRoom.AmbientMusicVolume, Duration = crossFadeDuration })
			StopSound({ Id = previousId, Duration = crossFadeDuration })
			game.AudioState.AmbientMusicId = newId
			game.AudioState.AmbientTrackName = trackName
		else
			base(trackName, args)
			game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_PlaybackPositionZeroTime = game._worldTimeUnmodified
		end
		game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_CurrentSongName = songName
		game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_CurrentGroup = newGroup
	end
end)

-- If we're currently fading between two versions of the same track, suppress Mel's selection voicelines by triggering her cooldown
modutil.mod.Path.Wrap("SelectMusicPlayerItem", function(base, screen, button)
	local newSong = button ~= nil and button.Data ~= nil and button.Data.Name or nil
	local previousSong = game.GameState.MusicPlayerSongName
	if newSong ~= nil and previousSong ~= nil and newSong ~= previousSong then
		local newGroup = songGroupOf(newSong)
		if newGroup ~= nil and newGroup == songGroupOf(previousSong) then
			game.TriggerCooldown("MelMusicPlayerRequestSpeech")
		end
	end

	base(screen, button)
end)
