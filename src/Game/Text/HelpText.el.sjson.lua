local order = {
  "Id",
  "DisplayName",
  "Description"
}

local newData = {
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Artemis",
    DisplayName = "Το Φως του Φεγγαριού μαζί μας \\[Artemis Solo\\]",
    Description = "Μουσική που χρησιμοποιούν οι Αργυρές Αδελφές για να ενισχύουν τους δεσμούς τους και να παίρνουν θάρρος."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Melinoe",
    DisplayName = "Το Φως του Φεγγαριού μαζί μας \\[Melinoë Solo\\]",
    Description = "Μουσική που χρησιμοποιούν οι Αργυρές Αδελφές για να ενισχύουν τους δεσμούς τους και να παίρνουν θάρρος."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ArtemisSong_Duet",
    DisplayName = "Το Φως του Φεγγαριού μαζί μας \\[Duet\\]",
    Description = "Μουσική που χρησιμοποιούν οι Αργυρές Αδελφές για να ενισχύουν τους δεσμούς τους και να παίρνουν θάρρος."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_ApolloSong_Lyrics",
    DisplayName = "Δόξα Λαμπρή \\[Lyrics\\]",
    Description = "Μουσική για την απρόσμενη αλληλεγγύη που επιδεικνύουν οι Ολύμπιοι θεοί ενάντια σε μια κοινή απειλή."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndTheme_Lyrics",
    DisplayName = "Ο Χρόνος Ανήκει πια σ' Εμάς \\[Trio\\]",
    Description = "Μουσική που μνημονεύει έναν απαράμιλλο θρίαμβο για τον Κάτω Κόσμο και για τον Όλυμπο."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Artemis",
    DisplayName = "Ο Χρόνος Ανήκει πια σ' Εμάς \\[Artemis Solo\\]",
    Description = "Μουσική που μνημονεύει έναν απαράμιλλο θρίαμβο για τον Κάτω Κόσμο και για τον Όλυμπο."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Melinoe",
    DisplayName = "Ο Χρόνος Ανήκει πια σ' Εμάς \\[Melinoë Solo\\]",
    Description = "Μουσική που μνημονεύει έναν απαράμιλλο θρίαμβο για τον Κάτω Κόσμο και για τον Όλυμπο."
  },
  {
    Id = "ModsNikkelMCrossroadsSingingSilverSistersMusicPlayer_Song_IrisEndThemeCrossroads_Duet",
    DisplayName = "Ο Χρόνος Ανήκει πια σ' Εμάς \\[Crossroads Duet\\]",
    Description = "Μουσική που μνημονεύει έναν απαράμιλλο θρίαμβο για τον Κάτω Κόσμο και για τον Όλυμπο."
  },
}

local helpTextFile = rom.path.combine(rom.paths.Content, 'Game/Text/el/HelpText.el.sjson')

sjson.hook(helpTextFile, function(data)
  for _, newHelpText in ipairs(newData) do
    table.insert(data.Texts, sjson.to_object(newHelpText, order))
  end
end)
