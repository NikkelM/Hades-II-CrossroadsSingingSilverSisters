local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "Mondlicht leite uns \\[Artemis Solo\\]",
    Description = "Ein Lied, das die Silbernen Schwestern singen, um ihre Verbundenheit und Entschlossenheit zu festigen."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "Mondlicht leite uns \\[Melinoë Solo\\]",
    Description = "Ein Lied, das die Silbernen Schwestern singen, um ihre Verbundenheit und Entschlossenheit zu festigen."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "Mondlicht leite uns \\[Duet\\]",
    Description = "Ein Lied, das die Silbernen Schwestern singen, um ihre Verbundenheit und Entschlossenheit zu festigen."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "Ruhmreiches Schicksal \\[Lyrics\\]",
    Description = "Ein Lied über die ungewöhnliche Einigkeit der Olympier gegen einen gemeinsamen Feind."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "Die Zeit gehört uns \\[Trio\\]",
    Description = "Ein Lied zu Ehren des unvergleichlichen Sieges der Unterwelt und des Olymp."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "Die Zeit gehört uns \\[Artemis Solo\\]",
    Description = "Ein Lied zu Ehren des unvergleichlichen Sieges der Unterwelt und des Olymp."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "Die Zeit gehört uns \\[Melinoë Solo\\]",
    Description = "Ein Lied zu Ehren des unvergleichlichen Sieges der Unterwelt und des Olymp."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "Die Zeit gehört uns \\[Crossroads Duet\\]",
    Description = "Ein Lied zu Ehren des unvergleichlichen Sieges der Unterwelt und des Olymp."
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/de/HelpText.de.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
