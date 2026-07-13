local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "《月光引我回家》（Artemis Solo）",
    Description = "银月姊妹用以增强彼此之间的纽带、巩固自身决心的主题曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "《月光引我回家》（Melinoë Solo）",
    Description = "银月姊妹用以增强彼此之间的纽带、巩固自身决心的主题曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "《月光引我回家》（Duet）",
    Description = "银月姊妹用以增强彼此之间的纽带、巩固自身决心的主题曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "《命定荣耀》（Lyrics）",
    Description = "歌颂奥林匹斯众神难得团结一致、共抗外敌的主题曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "《时间属于我们》（Trio）",
    Description = "歌颂冥界和奥林匹斯一同取得无与伦比的胜利的主题曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "《时间属于我们》（Artemis Solo）",
    Description = "歌颂冥界和奥林匹斯一同取得无与伦比的胜利的主题曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "《时间属于我们》（Melinoë Solo）",
    Description = "歌颂冥界和奥林匹斯一同取得无与伦比的胜利的主题曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "《时间属于我们》（Crossroads Duet）",
    Description = "歌颂冥界和奥林匹斯一同取得无与伦比的胜利的主题曲。"
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/zh-CN/HelpText.zh-CN.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
