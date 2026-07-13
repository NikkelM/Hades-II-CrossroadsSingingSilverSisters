local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "Місяць шлях знайде \\[Artemis Solo\\]",
    Description = "Пісня, яка посилює єдність і рішучість Срібних сестер."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "Місяць шлях знайде \\[Melinoë Solo\\]",
    Description = "Пісня, яка посилює єдність і рішучість Срібних сестер."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "Місяць шлях знайде \\[Duet\\]",
    Description = "Пісня, яка посилює єдність і рішучість Срібних сестер."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "Доля слави \\[Lyrics\\]",
    Description = "Пісня, яка описує неочікуване єднання олімпійських богів проти спільного ворога."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "Наш час настав \\[Trio\\]",
    Description = "Пісня про незрівнянну перемогу Підземного світу й Олімпу."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "Наш час настав \\[Artemis Solo\\]",
    Description = "Пісня про незрівнянну перемогу Підземного світу й Олімпу."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "Наш час настав \\[Melinoë Solo\\]",
    Description = "Пісня про незрівнянну перемогу Підземного світу й Олімпу."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "Наш час настав \\[Crossroads Duet\\]",
    Description = "Пісня про незрівнянну перемогу Підземного світу й Олімпу."
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/uk/HelpText.uk.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
