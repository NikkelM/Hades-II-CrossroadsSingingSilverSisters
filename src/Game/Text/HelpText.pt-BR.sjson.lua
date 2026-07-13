local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "Que o Luar nos Oriente \\[Artemis Solo\\]",
    Description = "Tema que as Irmãs Argênteas usam para fortalecer seus laços e consolidar sua determinação."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "Que o Luar nos Oriente \\[Melinoë Solo\\]",
    Description = "Tema que as Irmãs Argênteas usam para fortalecer seus laços e consolidar sua determinação."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "Que o Luar nos Oriente \\[Duet\\]",
    Description = "Tema que as Irmãs Argênteas usam para fortalecer seus laços e consolidar sua determinação."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "Fatídica Glória \\[Lyrics\\]",
    Description = "Tema da improvável união solidária dos deuses do Olimpo contra uma ameaça em comum."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "O Tempo Pertence a Nós \\[Trio\\]",
    Description = "Tema em comemoração a uma vitória incomparável para o Submundo e o Olimpo."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "O Tempo Pertence a Nós \\[Artemis Solo\\]",
    Description = "Tema em comemoração a uma vitória incomparável para o Submundo e o Olimpo."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "O Tempo Pertence a Nós \\[Melinoë Solo\\]",
    Description = "Tema em comemoração a uma vitória incomparável para o Submundo e o Olimpo."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "O Tempo Pertence a Nós \\[Crossroads Duet\\]",
    Description = "Tema em comemoração a uma vitória incomparável para o Submundo e o Olimpo."
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/pt-BR/HelpText.pt-BR.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
