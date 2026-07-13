local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "Moonlight Guide Us \\[Artemis\\]",
    Description = "Theme the Silver Sisters use to strengthen their connection and steady their resolve."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "Moonlight Guide Us \\[Melinoë\\]",
    Description = "Theme the Silver Sisters use to strengthen their connection and steady their resolve."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "Moonlight Guide Us \\[Duet\\]",
    Description = "Theme the Silver Sisters use to strengthen their connection and steady their resolve."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "Fated Glory \\[Lyrics\\]",
    Description = "Theme of the Olympian gods standing together in unlikely solidarity against a common threat."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "Time Belongs To Us \\[Credits\\]",
    Description = "Theme commemorating an incomparable victory for the Underworld and Olympus alike."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "Time Belongs To Us \\[Crossroads, Artemis\\]",
    Description = "Theme commemorating an incomparable victory for the Underworld and Olympus alike."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "Time Belongs To Us \\[Crossroads, Melinoë\\]",
    Description = "Theme commemorating an incomparable victory for the Underworld and Olympus alike."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "Time Belongs To Us \\[Crossroads, Duet\\]",
    Description = "Theme commemorating an incomparable victory for the Underworld and Olympus alike."
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/zh-TW/HelpText.zh-TW.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
