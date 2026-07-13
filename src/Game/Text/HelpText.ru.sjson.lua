local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "Да укажет нам путь лунный свет (Artemis Solo)",
    Description = "Музыкальная тема Серебряных сестёр, делающая их ближе и сильнее."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "Да укажет нам путь лунный свет (Melinoë Solo)",
    Description = "Музыкальная тема Серебряных сестёр, делающая их ближе и сильнее."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "Да укажет нам путь лунный свет (Duet)",
    Description = "Музыкальная тема Серебряных сестёр, делающая их ближе и сильнее."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "Судьбоносная слава (Lyrics)",
    Description = "Музыкальная тема олимпийских богов, внезапно сплотившихся против общей угрозы."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "Путь выбирать лишь нам (Trio)",
    Description = "Музыкальная тема оглушительной победы Подземного мира и Олимпа."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "Путь выбирать лишь нам (Artemis Solo)",
    Description = "Музыкальная тема оглушительной победы Подземного мира и Олимпа."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "Путь выбирать лишь нам (Melinoë Solo)",
    Description = "Музыкальная тема оглушительной победы Подземного мира и Олимпа."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "Путь выбирать лишь нам (Crossroads Duet)",
    Description = "Музыкальная тема оглушительной победы Подземного мира и Олимпа."
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/ru/HelpText.ru.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
