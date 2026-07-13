local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "Que la Luna nos guíe \\[Artemis Solo\\]",
    Description = "Canción que usan las Hermanas Argénteas para fortalecer sus vínculos y afianzar su voluntad."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "Que la Luna nos guíe \\[Melinoë Solo\\]",
    Description = "Canción que usan las Hermanas Argénteas para fortalecer sus vínculos y afianzar su voluntad."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "Que la Luna nos guíe \\[Duet\\]",
    Description = "Canción que usan las Hermanas Argénteas para fortalecer sus vínculos y afianzar su voluntad."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "Hado glorioso \\[Lyrics\\]",
    Description = "Canción sobre la insólita solidaridad y unión de los dioses del Olimpo frente a un enemigo común."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "El tiempo nos pertenece \\[Trio\\]",
    Description = "Canción que conmemora una victoria incomparable para el Inframundo y el Olimpo."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "El tiempo nos pertenece \\[Artemis Solo\\]",
    Description = "Canción que conmemora una victoria incomparable para el Inframundo y el Olimpo."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "El tiempo nos pertenece \\[Melinoë Solo\\]",
    Description = "Canción que conmemora una victoria incomparable para el Inframundo y el Olimpo."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "El tiempo nos pertenece \\[Crossroads Duet\\]",
    Description = "Canción que conmemora una victoria incomparable para el Inframundo y el Olimpo."
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/es/HelpText.es.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
