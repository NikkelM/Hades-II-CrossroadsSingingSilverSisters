-- The value of a new song in this table is the song after which the new one should be inserted in the Music Maker list
-- Vocals controls the primary singer (e.g. Artemis/Apollo), Vocals2 the secondary singer (e.g. Melinoë)
mod.ModdedCrossroadsSongs = {
	-- Artemis' song "Moonlight Guide Us" (/Music/ArtemisSong_MC): Vocals = Artemis, Vocals2 = Melinoë
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis = "Song_ArtemisSong",
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe =
	"ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet =
	"ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
	-- Apollo's song "Fated Glory" (/Music/ApolloSong): solo, Vocals = Apollo
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics = "Song_ApolloSong",
	-- Credits song "Time Belongs To Us": baked duet (/Music/IrisEndTheme) plus stem-separable Crossroads version (/Music/IrisEndThemeCrossroads_MC)
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Credits = "Song_IrisEndTheme",
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis = "Song_IrisEndThemeAcoustic",
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe =
	"ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet =
	"ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
}

local songWorldUpgradeData = {
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis = {
		Name = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
		InheritFrom = { "DefaultSongItem" },
		TrackName = "/Music/ArtemisSong_MC",
		ModsNikkelMCrossroadsSingingSilverSisters_TrackOffset = 12,
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
		TrackName = "/Music/ArtemisSong_MC",
		ModsNikkelMCrossroadsSingingSilverSisters_TrackOffset = 12,
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
		TrackName = "/Music/ArtemisSong_MC",
		ModsNikkelMCrossroadsSingingSilverSisters_TrackOffset = 12,
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
	ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Credits = {
		Name = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Credits",
		InheritFrom = { "DefaultSongItem" },
		TrackName = "/Music/IrisEndTheme",
		ModsNikkelMCrossroadsSingingSilverSisters_TrackOffset = 33,

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
		TrackName = "/Music/IrisEndThemeCrossroads_MC",
		ModsNikkelMCrossroadsSingingSilverSisters_TrackOffset = 33,
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
		TrackName = "/Music/IrisEndThemeCrossroads_MC",
		ModsNikkelMCrossroadsSingingSilverSisters_TrackOffset = 33,
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
		TrackName = "/Music/IrisEndThemeCrossroads_MC",
		ModsNikkelMCrossroadsSingingSilverSisters_TrackOffset = 33,
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
