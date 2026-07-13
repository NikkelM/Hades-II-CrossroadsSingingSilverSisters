local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "月の導き\\[Artemis Solo\\]",
    Description = "銀月の姉妹が、たがいの絆とおのれの意志を\\n固めるために唄う調べ。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "月の導き\\[Melinoë Solo\\]",
    Description = "銀月の姉妹が、たがいの絆とおのれの意志を\\n固めるために唄う調べ。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "月の導き\\[Duet\\]",
    Description = "銀月の姉妹が、たがいの絆とおのれの意志を\\n固めるために唄う調べ。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "運命の栄光\\[Lyrics\\]",
    Description = "オリュンポスの神々が、意外にも一致団結し、\\n共通の脅威に立ち向かう様を唄った調べ。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "時はわれらと\\[Trio\\]",
    Description = "冥界とオリュンポスがつかんだ、比類なき勝利を祝した調べ。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "時はわれらと\\[Artemis Solo\\]",
    Description = "冥界とオリュンポスがつかんだ、比類なき勝利を祝した調べ。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "時はわれらと\\[Melinoë Solo\\]",
    Description = "冥界とオリュンポスがつかんだ、比類なき勝利を祝した調べ。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "時はわれらと\\[Crossroads Duet\\]",
    Description = "冥界とオリュンポスがつかんだ、比類なき勝利を祝した調べ。"
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/ja/HelpText.ja.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
