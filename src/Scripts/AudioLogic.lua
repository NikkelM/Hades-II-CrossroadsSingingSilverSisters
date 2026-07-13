modutil.mod.Path.Wrap("MusicianMusic", function(base, trackName, args)
	if game.ContainsAnyKey(mod.ModdedCrossroadsSongs, { game.GameState.MusicPlayerSongName }) then
		args = args or {}

		local songData = game.WorldUpgradeData[game.GameState.MusicPlayerSongName]
		-- Vocals controls the primary singer (e.g. Artemis/Apollo), Vocals2 the secondary singer (e.g. Melinoë).
		-- Songs that don't specify these default to both stems enabled, which is the original behaviour.
		local vocals = songData.ModsNikkelMCrossroadsSingingSilverSisters_Vocals
		if vocals == nil then vocals = 1 end
		local vocals2 = songData.ModsNikkelMCrossroadsSingingSilverSisters_Vocals2
		if vocals2 == nil then vocals2 = 1 end

		-- For these lyric songs, we need to have vocals enabled and low pass off in Hub_PreRun
		local customAmbientMusicParams = {
			Params = {
				LowPass = 0,
				Vocals = vocals,
				Vocals2 = vocals2,
			},
		}

		-- Also compare the ModsNikkelMCrossroadsSingingSilverSisters_CurrentSongName, in case the player switches between two versions of the same track
		if game.AudioState.AmbientMusicId ~= nil and trackName == game.AudioState.AmbientTrackName
				and game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_CurrentSongName == game.GameState.MusicPlayerSongName
				and not game.ActiveScreens.MusicPlayer then
			-- Don't restart the exact same song that's already playing
			game.UpdateAmbientMusicParameters(customAmbientMusicParams)
			return
		end

		if game.AudioState.AmbientMusicId ~= nil then
			-- Quick cut the previously playing id
			StopSound({ Id = AudioState.AmbientMusicId, Duration = 0.25 })
			AudioState.AmbientMusicId = nil
		end

		StopSound({ Id = game.AudioState.AmbientMusicId, Duration = 0.25 })
		game.AudioState.AmbientMusicId = nil
		-- Play only after moving the position to avoid pops
		game.wait(0.3)
		game.AudioState.AmbientMusicId = PlaySound({
			Name = songData.TrackName,
			Id = game.CurrentHubRoom.AmbientMusicSourceId
		})
		game.AudioState.AmbientTrackName = trackName
		game.AudioState.ModsNikkelMCrossroadsSingingSilverSisters_CurrentSongName = game.GameState.MusicPlayerSongName
		SetVolume({ Id = game.AudioState.AmbientMusicId, Value = 0 })

		if songData.ModsNikkelMCrossroadsSingingSilverSisters_TrackOffset ~= nil then
			SetSoundPosition({
				Id = game.AudioState.AmbientMusicId,
				Position = songData.ModsNikkelMCrossroadsSingingSilverSisters_TrackOffset
			})
		end

		game.UpdateAmbientMusicParameters(customAmbientMusicParams)
		SetSoundCueValue({ Id = game.AudioState.AmbientMusicId, Names = { "Guitar", "Bass", "Drums" }, Value = 1, Duration = 1.0 })
		SetSoundCueValue({ Id = game.AudioState.AmbientMusicId, Names = { "Vocals" }, Value = vocals, Duration = 1.0 })
		SetSoundCueValue({ Id = game.AudioState.AmbientMusicId, Names = { "Vocals2" }, Value = vocals2, Duration = 1.0 })
	else
		base(trackName, args)
	end
end)
