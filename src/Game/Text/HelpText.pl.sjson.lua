local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "Niech nas prowadzi księżycowy blask \\[Artemis Solo\\]",
    Description = "Pieśń, za sprawą której Srebrne Siostry wzmacniają łączącą je więź i dodają sobie otuchy."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "Niech nas prowadzi księżycowy blask \\[Melinoë Solo\\]",
    Description = "Pieśń, za sprawą której Srebrne Siostry wzmacniają łączącą je więź i dodają sobie otuchy."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "Niech nas prowadzi księżycowy blask \\[Duet\\]",
    Description = "Pieśń, za sprawą której Srebrne Siostry wzmacniają łączącą je więź i dodają sobie otuchy."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "W blasku chwały \\[Lyrics\\]",
    Description = "Pieśń opiewająca niecodzienną solidarność bogów Olimpijskich w obliczu jednoczącego zagrożenia."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "Czas jest nasz \\[Trio\\]",
    Description = "Pieśń upamiętniająca wspaniałe zwycięstwo zjednoczonych sił Podziemi i Olimpu."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "Czas jest nasz \\[Artemis Solo\\]",
    Description = "Pieśń upamiętniająca wspaniałe zwycięstwo zjednoczonych sił Podziemi i Olimpu."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "Czas jest nasz \\[Melinoë Solo\\]",
    Description = "Pieśń upamiętniająca wspaniałe zwycięstwo zjednoczonych sił Podziemi i Olimpu."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "Czas jest nasz \\[Crossroads Duet\\]",
    Description = "Pieśń upamiętniająca wspaniałe zwycięstwo zjednoczonych sił Podziemi i Olimpu."
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/pl/HelpText.pl.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
