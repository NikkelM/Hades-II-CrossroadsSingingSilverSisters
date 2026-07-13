local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "Éclaire notre chemin \\[Artemis Solo\\]",
    Description = "Un morceau chanté par les Sœurs d'Argent afin d'affirmer leur détermination et de consolider les liens les unissant."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "Éclaire notre chemin \\[Melinoë Solo\\]",
    Description = "Un morceau chanté par les Sœurs d'Argent afin d'affirmer leur détermination et de consolider les liens les unissant."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "Éclaire notre chemin \\[Duet\\]",
    Description = "Un morceau chanté par les Sœurs d'Argent afin d'affirmer leur détermination et de consolider les liens les unissant."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "Destin glorieux \\[Lyrics\\]",
    Description = "Un morceau célébrant l'union improbable des dieux de l'Olympe face à une menace commune."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "Le temps nous appartient \\[Trio\\]",
    Description = "Un morceau commémorant une victoire incomparable, tant pour l'Olympe que pour les Enfers."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "Le temps nous appartient \\[Artemis Solo\\]",
    Description = "Un morceau commémorant une victoire incomparable, tant pour l'Olympe que pour les Enfers."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "Le temps nous appartient \\[Melinoë Solo\\]",
    Description = "Un morceau commémorant une victoire incomparable, tant pour l'Olympe que pour les Enfers."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "Le temps nous appartient \\[Crossroads Duet\\]",
    Description = "Un morceau commémorant une victoire incomparable, tant pour l'Olympe que pour les Enfers."
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/fr/HelpText.fr.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
