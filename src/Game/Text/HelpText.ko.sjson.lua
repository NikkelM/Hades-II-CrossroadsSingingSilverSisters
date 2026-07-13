local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "달빛이 인도하리니 \\[Artemis Solo\\]",
    Description = "은빛 자매가 결속을 다지고 결의를 굳힐 때 흐르는 음악입니다."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "달빛이 인도하리니 \\[Melinoë Solo\\]",
    Description = "은빛 자매가 결속을 다지고 결의를 굳힐 때 흐르는 음악입니다."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "달빛이 인도하리니 \\[Duet\\]",
    Description = "은빛 자매가 결속을 다지고 결의를 굳힐 때 흐르는 음악입니다."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "운명적 영광 \\[Lyrics\\]",
    Description = "올림포스 신들이 공통의 적에게 맞서 흔치 않게 일치단결하는 음악입니다."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "시간은 우리 것 \\[Trio\\]",
    Description = "지하세계와 올림포스 양측의 유례없는 승전을 기리는 음악입니다."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "시간은 우리 것 \\[Artemis Solo\\]",
    Description = "지하세계와 올림포스 양측의 유례없는 승전을 기리는 음악입니다."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "시간은 우리 것 \\[Melinoë Solo\\]",
    Description = "지하세계와 올림포스 양측의 유례없는 승전을 기리는 음악입니다."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "시간은 우리 것 \\[Crossroads Duet\\]",
    Description = "지하세계와 올림포스 양측의 유례없는 승전을 기리는 음악입니다."
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/ko/HelpText.ko.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
