-- The value of a new song in this table is the song after which the new one should be inserted
mod.ModdedCrossroadsSongs = {
	-- "Moonlight Guide Us"
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis = "Song_ArtemisSong",
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe =
	"ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet =
	"ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
	-- "Fated Glory"
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics = "Song_ApolloSong",
	-- "Time Belongs To Us"
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics = "Song_IrisEndTheme",
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis = "Song_IrisEndThemeAcoustic",
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe =
	"ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet =
	"ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
}

-- Resolve each song to its base version, so switching between them seems like switching voices only, and doesn't restart the track
mod.SongVersionGroup = {}
for songKey in pairs(mod.ModdedCrossroadsSongs) do
	local base = mod.ModdedCrossroadsSongs[songKey]
	local guard = 0
	while mod.ModdedCrossroadsSongs[base] ~= nil and guard < 16 do
		base = mod.ModdedCrossroadsSongs[base]
		guard = guard + 1
	end
	mod.SongVersionGroup[songKey] = base
	mod.SongVersionGroup[base] = base
end

-- Track lengths. Used to wrap the preserved playback position if a song has somehow looped past its end on another version before switching
mod.SongVersionGroupLoopLength = {
	Song_ArtemisSong = 177.34,
	Song_ApolloSong = 180.43,
	Song_IrisEndTheme = 305.078,
	Song_IrisEndThemeAcoustic = 307.383,
}

local songWorldUpgradeData = {
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis = {
		Name = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
		InheritFrom = { "DefaultSongItem" },
		TrackName = "{579d4b44-552e-4096-a44f-cb698012626a}", -- event:/Moonlight Guide Us (custom bank)
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals = 1,
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals2 = 0,

		GameStateRequirements = {
			{
				PathTrue = { "GameState", "WorldUpgradesAdded", "Song_ArtemisSong" },
			},
		},
		Cost = {
			CosmeticsPoints = 250,
		},
	},
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe = {
		Name = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
		InheritFrom = { "DefaultSongItem" },
		TrackName = "{579d4b44-552e-4096-a44f-cb698012626a}", -- event:/Moonlight Guide Us (custom bank)
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals = 0,
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals2 = 1,

		GameStateRequirements = {
			{
				PathTrue = { "GameState", "WorldUpgradesAdded", "Song_ArtemisSong" },
			},
		},
		Cost = {
			CosmeticsPoints = 250,
		},
	},
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet = {
		Name = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
		InheritFrom = { "DefaultSongItem" },
		TrackName = "{579d4b44-552e-4096-a44f-cb698012626a}", -- event:/Moonlight Guide Us (custom bank)
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals = 1,
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals2 = 1,

		GameStateRequirements = {
			{
				PathTrue = { "GameState", "WorldUpgradesAdded", "Song_ArtemisSong" },
			},
		},
		Cost = {
			CosmeticsPoints = 250,
		},
	},
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics = {
		Name = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
		InheritFrom = { "DefaultSongItem" },
		TrackName = "{35bd94fd-f82b-45d0-a57f-539e855f30ef}", -- event:/ApolloSong (custom bank)
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals = 1,
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals2 = 0,

		GameStateRequirements = {
			{
				PathTrue = { "GameState", "WorldUpgradesAdded", "Song_ApolloSong" },
			},
		},
		Cost = {
			CosmeticsPoints = 250,
		},
	},
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics = {
		Name = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
		InheritFrom = { "DefaultSongItem" },
		TrackName = "{86f7fa50-de4b-44ef-931a-8c7f45fa2dae}", -- event:/Time Belongs To Us Credits (custom bank, loops)

		GameStateRequirements = {
			{
				PathTrue = { "GameState", "WorldUpgradesAdded", "Song_IrisEndTheme" },
			},
		},
		Cost = {
			CosmeticsPoints = 1300,
		},
	},
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis = {
		Name = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
		InheritFrom = { "DefaultSongItem" },
		TrackName = "{818c2810-f16f-455e-9bfd-25ea291ad1d4}", -- event:/Time Belongs To Us Crossroads Mix (custom bank)
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals = 1,
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals2 = 0,

		GameStateRequirements = {
			{
				PathTrue = { "GameState", "WorldUpgradesAdded", "Song_IrisEndTheme" },
			},
		},
		Cost = {
			CosmeticsPoints = 1000,
		},
	},
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe = {
		Name = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
		InheritFrom = { "DefaultSongItem" },
		TrackName = "{818c2810-f16f-455e-9bfd-25ea291ad1d4}", -- event:/Time Belongs To Us Crossroads Mix (custom bank)
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals = 0,
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals2 = 1,

		GameStateRequirements = {
			{
				PathTrue = { "GameState", "WorldUpgradesAdded", "Song_IrisEndTheme" },
			},
		},
		Cost = {
			CosmeticsPoints = 1000,
		},
	},
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet = {
		Name = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
		InheritFrom = { "DefaultSongItem" },
		TrackName = "{818c2810-f16f-455e-9bfd-25ea291ad1d4}", -- event:/Time Belongs To Us Crossroads Mix (custom bank)
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals = 1,
		ModsNikkelMCrossroadsSingingSilverSisters_Vocals2 = 1,

		GameStateRequirements = {
			{
				PathTrue = { "GameState", "WorldUpgradesAdded", "Song_IrisEndTheme" },
			},
		},
		Cost = {
			CosmeticsPoints = 1000,
		},
	},
}

-- Insert each new song after its anchor song in the Music Maker list
local songsToInsert = {}
for songKey, anchorSong in pairs(mod.ModdedCrossroadsSongs) do
	songsToInsert[songKey] = anchorSong
end

local insertedSong = true
while insertedSong do
	insertedSong = false
	for songKey, anchorSong in pairs(songsToInsert) do
		local insertIndex = nil
		for i, existingSong in ipairs(game.ScreenData.MusicPlayer.Songs) do
			if existingSong == anchorSong then
				insertIndex = i
				break
			end
		end

		if insertIndex then
			table.insert(game.ScreenData.MusicPlayer.Songs, insertIndex + 1, songKey)
			songsToInsert[songKey] = nil
			insertedSong = true
		end
	end
end

-- Make sure the inherited fields are applied properly, then insert the new song data into the WorldUpgradeData table
for songName, songData in pairs(songWorldUpgradeData) do
	game.ProcessDataInheritance(songData, game.WorldUpgradeData)
	game.WorldUpgradeData[songName] = songData
end

-- If the config option is enabled, unlock all songs immediately
if config.unlockEverything then
	local function unlockAllSongs()
		for songName, _ in pairs(songWorldUpgradeData) do
			game.AddWorldUpgrade(songName)
			if not game.Contains(game.GameState.UnlockedMusicPlayerSongs, songName) then
				table.insert(game.GameState.UnlockedMusicPlayerSongs, songName)
			end
		end
	end

	-- This must be the same as the wrap for HubPostBountyLoad and HubPostDreamLoad
	modutil.mod.Path.Wrap("DeathAreaRoomTransition", function(base, source, args)
		unlockAllSongs()

		return base(source, args)
	end)

	-- If returning from a Chaos Trial, this will be called instead of DeathAreaRoomTransition
	modutil.mod.Path.Wrap("HubPostBountyLoad", function(base, source, args)
		unlockAllSongs()

		return base(source, args)
	end)

	-- If returning from a Dream Dive, this will be called instead of DeathAreaRoomTransition
	modutil.mod.Path.Wrap("HubPostDreamLoad", function(base, source, args)
		unlockAllSongs()

		return base(source, args)
	end)
end

-- Retroactively fix songs that were unlocked via AddWorldUpgrade but not added to UnlockedMusicPlayerSongs before this was fixed in the mod
modutil.mod.Path.Wrap("DoPatches", function(base)
	if game.GameState ~= nil and game.GameState.WorldUpgradesAdded ~= nil then
		for songName, _ in pairs(songWorldUpgradeData) do
			if game.GameState.WorldUpgradesAdded[songName] == true and not game.Contains(game.GameState.UnlockedMusicPlayerSongs, songName) then
				table.insert(game.GameState.UnlockedMusicPlayerSongs, songName)
			end
		end
	end

	base()
end)
