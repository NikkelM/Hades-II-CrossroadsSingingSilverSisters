local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "Mehtap Üstümüze Olsun \\[Artemis Solo\\]",
    Description = "Bağlarını pekiştirip azimlerini körüklemek istediklerinde Gümüş Kardeşler'e yardımcı olan tema müziği."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "Mehtap Üstümüze Olsun \\[Melinoë Solo\\]",
    Description = "Bağlarını pekiştirip azimlerini körüklemek istediklerinde Gümüş Kardeşler'e yardımcı olan tema müziği."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "Mehtap Üstümüze Olsun \\[Duet\\]",
    Description = "Bağlarını pekiştirip azimlerini körüklemek istediklerinde Gümüş Kardeşler'e yardımcı olan tema müziği."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "Görkemli Kader \\[Lyrics\\]",
    Description = "Ortak bir düşmana karşı beklenmedik bir dayanışma içine giren Olimpos tanrılarının tema müziği."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "Bizim Zamanımız \\[Trio\\]",
    Description = "Yer Altı Dünyası ile Olimpos'un eşsiz zaferini ölümsüzleştiren tema müziği."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "Bizim Zamanımız \\[Artemis Solo\\]",
    Description = "Yer Altı Dünyası ile Olimpos'un eşsiz zaferini ölümsüzleştiren tema müziği."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "Bizim Zamanımız \\[Melinoë Solo\\]",
    Description = "Yer Altı Dünyası ile Olimpos'un eşsiz zaferini ölümsüzleştiren tema müziği."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "Bizim Zamanımız \\[Crossroads Duet\\]",
    Description = "Yer Altı Dünyası ile Olimpos'un eşsiz zaferini ölümsüzleştiren tema müziği."
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/tr/HelpText.tr.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
