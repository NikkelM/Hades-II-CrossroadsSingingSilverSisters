local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "〈月光引領〉（Artemis Solo）",
    Description = "銀月姐妹用以維繫彼此感情，鞏固自身決心的主題曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "〈月光引領〉（Melinoë Solo）",
    Description = "銀月姐妹用以維繫彼此感情，鞏固自身決心的主題曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "〈月光引領〉（Duet）",
    Description = "銀月姐妹用以維繫彼此感情，鞏固自身決心的主題曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "〈宿命榮光〉（Lyrics）",
    Description = "一首歌頌奧林帕斯眾神難得同心御敵、患難與共的歌曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "〈時間屬於我們〉（Trio）",
    Description = "頌揚冥界與奧林帕斯空前勝利的主題曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "〈時間屬於我們〉（Artemis Solo）",
    Description = "頌揚冥界與奧林帕斯空前勝利的主題曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "〈時間屬於我們〉（Melinoë Solo）",
    Description = "頌揚冥界與奧林帕斯空前勝利的主題曲。"
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "〈時間屬於我們〉（Crossroads Duet）",
    Description = "頌揚冥界與奧林帕斯空前勝利的主題曲。"
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/zh-TW/HelpText.zh-TW.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
