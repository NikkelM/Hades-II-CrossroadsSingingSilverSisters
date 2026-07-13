local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "Luna, Guida Tutte Noi \\[Artemis Solo\\]",
    Description = "Tema usato dalle Sorelle Argentee per rafforzare il loro legame, e la loro determinazione."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "Luna, Guida Tutte Noi \\[Melinoë Solo\\]",
    Description = "Tema usato dalle Sorelle Argentee per rafforzare il loro legame, e la loro determinazione."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "Luna, Guida Tutte Noi \\[Duet\\]",
    Description = "Tema usato dalle Sorelle Argentee per rafforzare il loro legame, e la loro determinazione."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "Fato Glorioso \\[Lyrics\\]",
    Description = "Tema degli dèi olimpici, insolitamente uniti da una solidarietà reciproca contro una minaccia comune."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "Il Tempo È di Tutti Noi \\[Trio\\]",
    Description = "Tema che commemora un impareggiabile trionfo, per l'Oltretomba e l'Olimpo insieme."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "Il Tempo È di Tutti Noi \\[Artemis Solo\\]",
    Description = "Tema che commemora un impareggiabile trionfo, per l'Oltretomba e l'Olimpo insieme."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "Il Tempo È di Tutti Noi \\[Melinoë Solo\\]",
    Description = "Tema che commemora un impareggiabile trionfo, per l'Oltretomba e l'Olimpo insieme."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "Il Tempo È di Tutti Noi \\[Crossroads Duet\\]",
    Description = "Tema che commemora un impareggiabile trionfo, per l'Oltretomba e l'Olimpo insieme."
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/it/HelpText.it.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
