-- Register the vanilla version groups to enable seemless switching between them and the new modded versions
MusicMakerAPI.RegisterVersionGroup({ AnchorSong = "Song_ArtemisSong", LoopLength = 177.34 })
MusicMakerAPI.RegisterVersionGroup({ AnchorSong = "Song_ApolloSong", LoopLength = 180.43 })
MusicMakerAPI.RegisterVersionGroup({ AnchorSong = "Song_IrisEndTheme", LoopLength = 305.078 })
MusicMakerAPI.RegisterVersionGroup({ AnchorSong = "Song_IrisEndThemeAcoustic", LoopLength = 307.383 })

MusicMakerAPI.RegisterSoundBank(
	rom.path.combine(_PLUGIN.plugins_data_mod_folder_path, "Audio\\ModsNikkelMCrossroadsSingingSilverSistersMusic.bank"))

-- Descriptions come from the matching base-game songs
local artemisSongDescription = {
	en = "Theme the Silver Sisters use to strengthen their connection and steady their resolve.",
	de = "Ein Lied, das die Silbernen Schwestern singen, um ihre Verbundenheit und Entschlossenheit zu festigen.",
	el = "Μουσική που χρησιμοποιούν οι Αργυρές Αδελφές για να ενισχύουν τους δεσμούς τους και να παίρνουν θάρρος.",
	es = "Canción que usan las Hermanas Argénteas para fortalecer sus vínculos y afianzar su voluntad.",
	fr =
	"Un morceau chanté par les Sœurs d'Argent afin d'affirmer leur détermination et de consolider les liens les unissant.",
	it = "Tema usato dalle Sorelle Argentee per rafforzare il loro legame, e la loro determinazione.",
	ja = "銀月の姉妹が、たがいの絆とおのれの意志を\\n固めるために唄う調べ。",
	ko = "은빛 자매가 결속을 다지고 결의를 굳힐 때 흐르는 음악입니다.",
	pl = "Pieśń, za sprawą której Srebrne Siostry wzmacniają łączącą je więź i dodają sobie otuchy.",
	["pt-BR"] = "Tema que as Irmãs Argênteas usam para fortalecer seus laços e consolidar sua determinação.",
	ru = "Музыкальная тема Серебряных сестёр, делающая их ближе и сильнее.",
	tr = "Bağlarını pekiştirip azimlerini körüklemek istediklerinde Gümüş Kardeşler'e yardımcı olan tema müziği. ",
	uk = "Пісня, яка посилює єдність і рішучість Срібних сестер.",
	["zh-CN"] = "银月姊妹用以增强彼此之间的纽带、巩固自身决心的主题曲。",
	["zh-TW"] = "銀月姐妹用以維繫彼此感情，鞏固自身決心的主題曲。",
}
local apolloSongDescription = {
	en = "Theme of the Olympian gods standing together in unlikely solidarity against a common threat.",
	de = "Ein Lied über die ungewöhnliche Einigkeit der Olympier gegen einen gemeinsamen Feind.",
	el = "Μουσική για την απρόσμενη αλληλεγγύη που επιδεικνύουν οι Ολύμπιοι θεοί ενάντια σε μια κοινή απειλή.",
	es = "Canción sobre la insólita solidaridad y unión de los dioses del Olimpo frente a un enemigo común.",
	fr = "Un morceau célébrant l'union improbable des dieux de l'Olympe face à une menace commune.",
	it = "Tema degli dèi olimpici, insolitamente uniti da una solidarietà reciproca contro una minaccia comune.",
	ja = "オリュンポスの神々が、意外にも一致団結し、\\n共通の脅威に立ち向かう様を唄った調べ。",
	ko = "올림포스 신들이 공통의 적에게 맞서 흔치 않게 일치단결하는 음악입니다.",
	pl = "Pieśń opiewająca niecodzienną solidarność bogów Olimpijskich w obliczu jednoczącego zagrożenia.",
	["pt-BR"] = "Tema da improvável união solidária dos deuses do Olimpo contra uma ameaça em comum.",
	ru = "Музыкальная тема олимпийских богов, внезапно сплотившихся против общей угрозы.",
	tr = "Ortak bir düşmana karşı beklenmedik bir dayanışma içine giren Olimpos tanrılarının tema müziği.",
	uk = "Пісня, яка описує неочікуване єднання олімпійських богів проти спільного ворога.",
	["zh-CN"] = "歌颂奥林匹斯众神难得团结一致、共抗外敌的主题曲。",
	["zh-TW"] = "一首歌頌奧林帕斯眾神難得同心御敵、患難與共的歌曲。",
}
local endThemeDescription = {
	en = "Theme commemorating an incomparable victory for the Underworld and Olympus alike.",
	de = "Ein Lied zu Ehren des unvergleichlichen Sieges der Unterwelt und des Olymp.",
	el = "Μουσική που μνημονεύει έναν απαράμιλλο θρίαμβο για τον Κάτω Κόσμο και για τον Όλυμπο.",
	es = "Canción que conmemora una victoria incomparable para el Inframundo y el Olimpo.",
	fr = "Un morceau commémorant une victoire incomparable, tant pour l'Olympe que pour les Enfers.",
	it = "Tema che commemora un impareggiabile trionfo, per l'Oltretomba e l'Olimpo insieme.",
	ja = "冥界とオリュンポスがつかんだ、比類なき勝利を祝した調べ。",
	ko = "지하세계와 올림포스 양측의 유례없는 승전을 기리는 음악입니다.",
	pl = "Pieśń upamiętniająca wspaniałe zwycięstwo zjednoczonych sił Podziemi i Olimpu.",
	["pt-BR"] = "Tema em comemoração a uma vitória incomparável para o Submundo e o Olimpo.",
	ru = "Музыкальная тема оглушительной победы Подземного мира и Олимпа.",
	tr = "Yer Altı Dünyası ile Olimpos'un eşsiz zaferini ölümsüzleştiren tema müziği.",
	uk = "Пісня про незрівнянну перемогу Підземного світу й Олімпу.",
	["zh-CN"] = "歌颂冥界和奥林匹斯一同取得无与伦比的胜利的主题曲。",
	["zh-TW"] = "頌揚冥界與奧林帕斯空前勝利的主題曲。",
}
local endThemeCrossroadsDescription = {
	en = "Theme commemorating an incomparable victory for the Underworld and Olympus alike, but softer.",
	de = "Ein Lied zu Ehren des unvergleichlichen Sieges der Unterwelt und des Olymp, aber sanfter.",
	el =
	"Μουσική που μνημονεύει έναν απαράμιλλο θρίαμβο για τον Κάτω Κόσμο και για τον Όλυμπο, αλλά σε πιο απαλή εκτέλεση.",
	es = "Canción que conmemora una victoria incomparable para el Inframundo y el Olimpo, pero más suave.",
	fr =
	"Une version plus calme d'un morceau commémorant une victoire incomparable, tant pour l'Olympe que pour les Enfers.",
	it = "Tema che commemora un impareggiabile trionfo per Oltretomba e Olimpo... ma con più calma.",
	ja = "冥界とオリュンポスがつかんだ比類なき勝利を、\\n穏やかに祝した調べ。",
	ko = "지하세계와 올림포스 양측의 유례없는 승전을 부드럽게 기리는 음악입니다.",
	pl = "Pieśń upamiętniająca wspaniałe zwycięstwo zjednoczonych sił Podziemi i Olimpu (ale w spokojniejszej wersji).",
	["pt-BR"] = "Tema em comemoração a uma vitória incomparável para o Submundo e o Olimpo, mas com um toque mais leve.",
	ru = "Музыкальная тема оглушительной победы Подземного мира и Олимпа, но потише.",
	tr = "Yer Altı Dünyası ile Olimpos'un eşsiz zaferini ölümsüzleştiren tema müziği ama daha sakin hâli.",
	uk = "Пісня про незрівнянну перемогу Підземного світу й Олімпу (але з ніжнішим звучанням).",
	["zh-CN"] = "歌颂冥界和奥林匹斯一同取得无与伦比的胜利的主题曲，但是更为柔和。",
	["zh-TW"] = "頌揚冥界與奧林帕斯空前勝利的主題曲的輕柔版本。",
}

-- Moonlight Guide Us
MusicMakerAPI.RegisterSong({
	Id = _PLUGIN.guid .. "." .. "Song_ArtemisSong_Artemis",
	TrackName = "{579d4b44-552e-4096-a44f-cb698012626a}",
	InsertAfter = "Song_ArtemisSong",
	Name = {
		en = "Moonlight Guide Us \\[Artemis Solo\\]",
		de = "Mondlicht leite uns \\[Artemis Solo\\]",
		el = "Το Φως του Φεγγαριού μαζί μας \\[Artemis Solo\\]",
		es = "Que la Luna nos guíe \\[Artemis Solo\\]",
		fr = "Éclaire notre chemin \\[Artemis Solo\\]",
		it = "Luna, Guida Tutte Noi \\[Artemis Solo\\]",
		ja = "月の導き\\[Artemis Solo\\]",
		ko = "달빛이 인도하리니 \\[Artemis Solo\\]",
		pl = "Niech nas prowadzi księżycowy blask \\[Artemis Solo\\]",
		["pt-BR"] = "Que o Luar nos Oriente \\[Artemis Solo\\]",
		ru = "Да укажет нам путь лунный свет (Artemis Solo)",
		tr = "Mehtap Üstümüze Olsun \\[Artemis Solo\\]",
		uk = "Місяць шлях знайде \\[Artemis Solo\\]",
		["zh-CN"] = "《月光引我回家》（Artemis Solo）",
		["zh-TW"] = "〈月光引領〉（Artemis Solo）",
	},
	Description = artemisSongDescription,
	VersionOf = "Song_ArtemisSong",
	Stems = { "Guitar", "Bass", "Drums", "Vocals" },
	Cost = {
		CosmeticsPoints = 450,
		GiftPoints = 4,
	},
	GameStateRequirements = {
		{
			PathTrue = { "GameState", "WorldUpgradesAdded", "Song_ArtemisSong" }
		},
		{
			Path = { "GameState", "TextLinesRecord" },
			HasAll = { "ArtemisGift03" },
		},
	},
	UnlockImmediately = config.unlockEverything,
})
MusicMakerAPI.RegisterSong({
	Id = _PLUGIN.guid .. "." .. "Song_ArtemisSong_Melinoe",
	TrackName = "{579d4b44-552e-4096-a44f-cb698012626a}",
	InsertAfter = _PLUGIN.guid .. "." .. "Song_ArtemisSong_Artemis",
	Name = {
		en = "Moonlight Guide Us \\[Melinoë Solo\\]",
		de = "Mondlicht leite uns \\[Melinoë Solo\\]",
		el = "Το Φως του Φεγγαριού μαζί μας \\[Melinoë Solo\\]",
		es = "Que la Luna nos guíe \\[Melinoë Solo\\]",
		fr = "Éclaire notre chemin \\[Melinoë Solo\\]",
		it = "Luna, Guida Tutte Noi \\[Melinoë Solo\\]",
		ja = "月の導き\\[Melinoë Solo\\]",
		ko = "달빛이 인도하리니 \\[Melinoë Solo\\]",
		pl = "Niech nas prowadzi księżycowy blask \\[Melinoë Solo\\]",
		["pt-BR"] = "Que o Luar nos Oriente \\[Melinoë Solo\\]",
		ru = "Да укажет нам путь лунный свет (Melinoë Solo)",
		tr = "Mehtap Üstümüze Olsun \\[Melinoë Solo\\]",
		uk = "Місяць шлях знайде \\[Melinoë Solo\\]",
		["zh-CN"] = "《月光引我回家》（Melinoë Solo）",
		["zh-TW"] = "〈月光引領〉（Melinoë Solo）",
	},
	Description = artemisSongDescription,
	VersionOf = "Song_ArtemisSong",
	Stems = { "Guitar", "Bass", "Drums", "Vocals2" },
	Cost = {
		CosmeticsPoints = 550,
		SuperGiftPoints = 2,
	},
	GameStateRequirements = {
		{
			PathTrue = { "GameState", "WorldUpgradesAdded", "Song_ArtemisSong" }
		},
		{
			Path = { "GameState", "TextLinesRecord" },
			HasAll = { "ArtemisGift03" },
		},
	},
	UnlockImmediately = config.unlockEverything,
})
MusicMakerAPI.RegisterSong({
	Id = _PLUGIN.guid .. "." .. "Song_ArtemisSong_Duet",
	TrackName = "{579d4b44-552e-4096-a44f-cb698012626a}",
	InsertAfter = _PLUGIN.guid .. "." .. "Song_ArtemisSong_Melinoe",
	Name = {
		en = "Moonlight Guide Us \\[Duet\\]",
		de = "Mondlicht leite uns \\[Duet\\]",
		el = "Το Φως του Φεγγαριού μαζί μας \\[Duet\\]",
		es = "Que la Luna nos guíe \\[Duet\\]",
		fr = "Éclaire notre chemin \\[Duet\\]",
		it = "Luna, Guida Tutte Noi \\[Duet\\]",
		ja = "月の導き\\[Duet\\]",
		ko = "달빛이 인도하리니 \\[Duet\\]",
		pl = "Niech nas prowadzi księżycowy blask \\[Duet\\]",
		["pt-BR"] = "Que o Luar nos Oriente \\[Duet\\]",
		ru = "Да укажет нам путь лунный свет (Duet)",
		tr = "Mehtap Üstümüze Olsun \\[Duet\\]",
		uk = "Місяць шлях знайде \\[Duet\\]",
		["zh-CN"] = "《月光引我回家》（Duet）",
		["zh-TW"] = "〈月光引領〉（Duet）",
	},
	Description = artemisSongDescription,
	VersionOf = "Song_ArtemisSong",
	Stems = { "Guitar", "Bass", "Drums", "Vocals", "Vocals2" },
	Cost = {
		CosmeticsPoints = 900,
		GiftPoints = 4,
		SuperGiftPoints = 2,
	},
	GameStateRequirements = {
		{
			PathTrue = { "GameState", "WorldUpgradesAdded", _PLUGIN.guid .. "." .. "Song_ArtemisSong_Artemis" }
		},
		{
			PathTrue = { "GameState", "WorldUpgradesAdded", _PLUGIN.guid .. "." .. "Song_ArtemisSong_Melinoe" }
		},
	},
	UnlockImmediately = config.unlockEverything,
})

-- Fated Glory
MusicMakerAPI.RegisterSong({
	Id = _PLUGIN.guid .. "." .. "Song_ApolloSong_Lyrics",
	TrackName = "{35bd94fd-f82b-45d0-a57f-539e855f30ef}",
	InsertAfter = "Song_ApolloSong",
	Name = {
		en = "Fated Glory \\[Lyrics\\]",
		de = "Ruhmreiches Schicksal \\[Lyrics\\]",
		el = "Δόξα Λαμπρή \\[Lyrics\\]",
		es = "Hado glorioso \\[Lyrics\\]",
		fr = "Destin glorieux \\[Lyrics\\]",
		it = "Fato Glorioso \\[Lyrics\\]",
		ja = "運命の栄光\\[Lyrics\\]",
		ko = "운명적 영광 \\[Lyrics\\]",
		pl = "W blasku chwały \\[Lyrics\\]",
		["pt-BR"] = "Fatídica Glória \\[Lyrics\\]",
		ru = "Судьбоносная слава (Lyrics)",
		tr = "Görkemli Kader \\[Lyrics\\]",
		uk = "Доля слави \\[Lyrics\\]",
		["zh-CN"] = "《命定荣耀》（Lyrics）",
		["zh-TW"] = "〈宿命榮光〉（Lyrics）",
	},
	Description = apolloSongDescription,
	VersionOf = "Song_ApolloSong",
	Stems = { "Guitar", "Bass", "Drums", "Vocals" },
	Cost = {
		CosmeticsPoints = 500,
		GiftPoints = 2,
		SuperGiftPoints = 2,
	},
	GameStateRequirements = {
		{
			PathTrue = { "GameState", "WorldUpgradesAdded", "Song_ApolloSong" }
		},
		{
			Path = { "GameState", "TextLinesRecord" },
			HasAll = { "ApolloGift04" },
		},
	},
	UnlockImmediately = config.unlockEverything,
})

-- Time Belongs To Us (Credits)
MusicMakerAPI.RegisterSong({
	Id = _PLUGIN.guid .. "." .. "Song_IrisEndTheme_Lyrics",
	TrackName = "{86f7fa50-de4b-44ef-931a-8c7f45fa2dae}",
	InsertAfter = "Song_IrisEndTheme",
	Name = {
		en = "Time Belongs To Us \\[Trio\\]",
		de = "Die Zeit gehört uns \\[Trio\\]",
		el = "Ο Χρόνος Ανήκει πια σ' Εμάς \\[Trio\\]",
		es = "El tiempo nos pertenece \\[Trio\\]",
		fr = "Le temps nous appartient \\[Trio\\]",
		it = "Il Tempo È di Tutti Noi \\[Trio\\]",
		ja = "時はわれらと\\[Trio\\]",
		ko = "시간은 우리 것 \\[Trio\\]",
		pl = "Czas jest nasz \\[Trio\\]",
		["pt-BR"] = "O Tempo Pertence a Nós \\[Trio\\]",
		ru = "Путь выбирать лишь нам (Trio)",
		tr = "Bizim Zamanımız \\[Trio\\]",
		uk = "Наш час настав \\[Trio\\]",
		["zh-CN"] = "《时间属于我们》（Trio）",
		["zh-TW"] = "〈時間屬於我們〉（Trio）",
	},
	Description = endThemeDescription,
	VersionOf = "Song_IrisEndTheme",
	Rocking = true,
	Cost = {
		CosmeticsPoints = 2000,
		SuperGiftPoints = 3,
		MixerIBoss = 3,
		MixerQBoss = 3,
	},
	GameStateRequirements = {
		{
			PathTrue = { "GameState", "WorldUpgradesAdded", "Song_IrisEndTheme" }
		},
		{
			PathFalse = { "CurrentRun", "TextLinesRecord", "TrueEndingFinale01" },
		},
	},
	UnlockImmediately = config.unlockEverything,
})

-- Time Belongs To Us [Crossroads Mix]
MusicMakerAPI.RegisterSong({
	Id = _PLUGIN.guid .. "." .. "Song_IrisEndThemeCrossroads_Artemis",
	TrackName = "{818c2810-f16f-455e-9bfd-25ea291ad1d4}",
	InsertAfter = "Song_IrisEndThemeAcoustic",
	Name = {
		en = "Time Belongs To Us \\[Artemis Solo\\]",
		de = "Die Zeit gehört uns \\[Artemis Solo\\]",
		el = "Ο Χρόνος Ανήκει πια σ' Εμάς \\[Artemis Solo\\]",
		es = "El tiempo nos pertenece \\[Artemis Solo\\]",
		fr = "Le temps nous appartient \\[Artemis Solo\\]",
		it = "Il Tempo È di Tutti Noi \\[Artemis Solo\\]",
		ja = "時はわれらと\\[Artemis Solo\\]",
		ko = "시간은 우리 것 \\[Artemis Solo\\]",
		pl = "Czas jest nasz \\[Artemis Solo\\]",
		["pt-BR"] = "O Tempo Pertence a Nós \\[Artemis Solo\\]",
		ru = "Путь выбирать лишь нам (Artemis Solo)",
		tr = "Bizim Zamanımız \\[Artemis Solo\\]",
		uk = "Наш час настав \\[Artemis Solo\\]",
		["zh-CN"] = "《时间属于我们》（Artemis Solo）",
		["zh-TW"] = "〈時間屬於我們〉（Artemis Solo）",
	},
	Description = endThemeCrossroadsDescription,
	VersionOf = "Song_IrisEndThemeAcoustic",
	Stems = { "Guitar", "Bass", "Drums", "Vocals" },
	Cost = {
		CosmeticsPoints = 1250,
		GiftPoints = 4,
		MixerIBoss = 1,
	},
	GameStateRequirements = {
		{
			PathTrue = { "GameState", "WorldUpgradesAdded", "Song_IrisEndThemeAcoustic" }
		},
	},
	UnlockImmediately = config.unlockEverything,
})
MusicMakerAPI.RegisterSong({
	Id = _PLUGIN.guid .. "." .. "Song_IrisEndThemeCrossroads_Melinoe",
	TrackName = "{818c2810-f16f-455e-9bfd-25ea291ad1d4}",
	InsertAfter = _PLUGIN.guid .. "." .. "Song_IrisEndThemeCrossroads_Artemis",
	Name = {
		en = "Time Belongs To Us \\[Melinoë Solo\\]",
		de = "Die Zeit gehört uns \\[Melinoë Solo\\]",
		el = "Ο Χρόνος Ανήκει πια σ' Εμάς \\[Melinoë Solo\\]",
		es = "El tiempo nos pertenece \\[Melinoë Solo\\]",
		fr = "Le temps nous appartient \\[Melinoë Solo\\]",
		it = "Il Tempo È di Tutti Noi \\[Melinoë Solo\\]",
		ja = "時はわれらと\\[Melinoë Solo\\]",
		ko = "시간은 우리 것 \\[Melinoë Solo\\]",
		pl = "Czas jest nasz \\[Melinoë Solo\\]",
		["pt-BR"] = "O Tempo Pertence a Nós \\[Melinoë Solo\\]",
		ru = "Путь выбирать лишь нам (Melinoë Solo)",
		tr = "Bizim Zamanımız \\[Melinoë Solo\\]",
		uk = "Наш час настав \\[Melinoë Solo\\]",
		["zh-CN"] = "《时间属于我们》（Melinoë Solo）",
		["zh-TW"] = "〈時間屬於我們〉（Melinoë Solo）",
	},
	Description = endThemeCrossroadsDescription,
	VersionOf = "Song_IrisEndThemeAcoustic",
	Stems = { "Guitar", "Bass", "Drums", "Vocals2" },
	Cost = {
		CosmeticsPoints = 1400,
		SuperGiftPoints = 2,
		MixerQBoss = 1,
	},
	GameStateRequirements = {
		{
			PathTrue = { "GameState", "WorldUpgradesAdded", "Song_IrisEndThemeAcoustic" }
		},
	},
	UnlockImmediately = config.unlockEverything,
})
MusicMakerAPI.RegisterSong({
	Id = _PLUGIN.guid .. "." .. "Song_IrisEndThemeCrossroads_Duet",
	TrackName = "{818c2810-f16f-455e-9bfd-25ea291ad1d4}",
	InsertAfter = _PLUGIN.guid .. "." .. "Song_IrisEndThemeCrossroads_Melinoe",
	Name = {
		en = "Time Belongs To Us \\[Crossroads Duet\\]",
		de = "Die Zeit gehört uns \\[Crossroads Duet\\]",
		el = "Ο Χρόνος Ανήκει πια σ' Εμάς \\[Crossroads Duet\\]",
		es = "El tiempo nos pertenece \\[Crossroads Duet\\]",
		fr = "Le temps nous appartient \\[Crossroads Duet\\]",
		it = "Il Tempo È di Tutti Noi \\[Crossroads Duet\\]",
		ja = "時はわれらと\\[Crossroads Duet\\]",
		ko = "시간은 우리 것 \\[Crossroads Duet\\]",
		pl = "Czas jest nasz \\[Crossroads Duet\\]",
		["pt-BR"] = "O Tempo Pertence a Nós \\[Crossroads Duet\\]",
		ru = "Путь выбирать лишь нам (Crossroads Duet)",
		tr = "Bizim Zamanımız \\[Crossroads Duet\\]",
		uk = "Наш час настав \\[Crossroads Duet\\]",
		["zh-CN"] = "《时间属于我们》（Crossroads Duet）",
		["zh-TW"] = "〈時間屬於我們〉（Crossroads Duet）",
	},
	Description = endThemeCrossroadsDescription,
	VersionOf = "Song_IrisEndThemeAcoustic",
	Stems = { "Guitar", "Bass", "Drums", "Vocals", "Vocals2" },
	Cost = {
		CosmeticsPoints = 2000,
		GiftPoints = 4,
		SuperGiftPoints = 2,
		MixerIBoss = 1,
		MixerQBoss = 1,
	},
	GameStateRequirements = {
		{
			PathTrue = { "GameState", "WorldUpgradesAdded", _PLUGIN.guid .. "." .. "Song_IrisEndThemeCrossroads_Artemis" }
		},
		{
			PathTrue = { "GameState", "WorldUpgradesAdded", _PLUGIN.guid .. "." .. "Song_IrisEndThemeCrossroads_Melinoe" }
		},
	},
	UnlockImmediately = config.unlockEverything,
})
