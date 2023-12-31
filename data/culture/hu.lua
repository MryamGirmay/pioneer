-- Copyright © 2008-2024 Pioneer Developers. See AUTHORS.txt for details
-- Licensed under the terms of the GPL v3. See licenses/GPL-3.txt

local CultureName = require './common'

local male = {
	'Ábel',
	'Ádám',
	'Adrián',
	'Ákos',
	'Alex',
	'András',
	'Antal',
	'Arnold',
	'Áron',
	'Árpád',
	'Attila',
	'Balázs',
	'Bálint',
	'Barna',
	'Barnabás',
	'Béla',
	'Bence',
	'Benedek',
	'Benjámin',
	'Bertalan',
	'Botond',
	'Csaba',
	'Dániel',
	'Dávid',
	'Dénes',
	'Dominik',
	'Endre',
	'Erik',
	'Elek',
	'Ernõ',
	'Ferenc',
	'Gábor',
	'Gergely',
	'Gergõ',
	'Géza',
	'György',
	'Gyula',
	'Henrik',
	'Hugó',
	'Imre',
	'István',
	'János',
	'József',
	'Kálmán',
	'Károly',
	'Kevin',
	'Kornél',
	'Kristóf',
	'Krisztián',
	'Krisztofer',
	'Lajos',
	'László',
	'Levente',
	'Marcell',
	'Márió',
	'Márk',
	'Martin',
	'Márton',
	'Máté',
	'Mátyás',
	'Mihály',
	'Miklós',
	'Milán',
	'Nándor',
	'Norbert',
	'Olivér',
	'Pál',
	'Patrik',
	'Péter',
	'Rajmund',
	'Renátó',
	'Richárd',
	'Róbert',
	'Roland',
	'Sándor',
	'Soma',
	'Szabolcs',
	'Szilárd',
	'Szilveszter',
	'Tamás',
	'Tibor',
	'Valentin',
	'Viktor',
	'Vilmos',
	'Zoltán',
	'Zsolt',
	'Zsombor'
}

local female = {
	'Adrienn',
	'Andrea',
	'Anett',
	'Anikó',
	'Anita',
	'Anna',
	'Annamária',
	'Barbara',
	'Bea',
	'Beatrix',
	'Bernadett',
	'Berta',
	'Bettina',
	'Beáta',
	'Bianka',
	'Boglárka',
	'Brigitta',
	'Cintia',
	'Csilla',
	'Dalma',
	'Diána',
	'Dominika',
	'Dorina',
	'Dorottya',
	'Dzsenifer',
	'Dóra',
	'Edina',
	'Emese',
	'Enikõ',
	'Erika',
	'Erzsébet',
	'Eszter',
	'Evelin',
	'Fanni',
	'Flóra',
	'Fruzsina',
	'Gabriella',
	'Georgina',
	'Gréta',
	'Hajnalka',
	'Henrietta',
	'Ildikó',
	'Ivett',
	'Judit',
	'Kata',
	'Katalin',
	'Kinga',
	'Kitti',
	'Klaudia',
	'Krisztina',
	'Laura',
	'Lili',
	'Lilla',
	'Luca',
	'Melinda',
	'Mercédesz',
	'Mária',
	'Mónika',
	'Nikolett',
	'Nikoletta',
	'Noémi',
	'Nóra',
	'Orsolya',
	'Petra',
	'Ramóna',
	'Rebeka',
	'Regina',
	'Renáta',
	'Rita',
	'Réka',
	'Szabina',
	'Szilvia',
	'Szimonetta',
	'Sára',
	'Tamara',
	'Tímea',
	'Tünde',
	'Veronika',
	'Viktória',
	'Virág',
	'Vivien',
	'Zsanett',
	'Zsuzsanna',
	'Zsófia',
	'Ágnes',
	'Éva'
}

local surname = {
	'Antal',
	'Bakos',
	'Balassa',
	'Balla',
	'Balog',
	'Balogh',
	'Balázs',
	'Banyó',
	'Barna',
	'Barta',
	'Biró',
	'Bodnár',
	'Bogdán',
	'Bognár',
	'Borbély',
	'Boros',
	'Borostyán',
	'Budai',
	'Bálint',
	'Csonka',
	'Deák',
	'Dobos',
	'Dudás',
	'Faragó',
	'Farkas',
	'Fazekas',
	'Fehér',
	'Fekete',
	'Filep',
	'Fodor',
	'Fábián',
	'Fülöp',
	'Gulyás',
	'Gál',
	'Gáspár',
	'Göbölös',
	'Hajdu',
	'Halmos',
	'Halász',
	'Hegedûs',
	'Horváth',
	'Hromkó',
	'Illés',
	'Jakab',
	'Juhász',
	'Jónás',
	'Katona',
	'Kelemen',
	'Kerekes',
	'Király',
	'Kis',
	'Kiss',
	'Kocsis',
	'Kovács',
	'Kozma',
	'Körmendi',
	'Lakatos',
	'Legéndy',
	'Lengyel',
	'Lukács',
	'László',
	'Magyar',
	'Major',
	'Majoros',
	'Mezei',
	'Molnár',
	'Márton',
	'Máté',
	'Mészáros',
	'Nagy',
	'Nemes',
	'Novák',
	'Németh',
	'Oláh',
	'Orbán',
	'Orosz',
	'Orsós',
	'Pap',
	'Papp',
	'Pataki',
	'Pintér',
	'Pál',
	'Pálmai',
	'Pásztor',
	'Péter',
	'Rácz',
	'Rákóczi',
	'Simon',
	'Sipos',
	'Somogyi',
	'Soós',
	'Szabó',
	'Szalai',
	'Szekeres',
	'Szilágyi',
	'Székely',
	'Szõke',
	'Szûcs',
	'Sándor',
	'Takács',
	'Tamás',
	'Tóth',
	'Török',
	'Varga',
	'Vass',
	'Veres',
	'Vincze',
	'Virág',
	'Váradi',
	'Vörös'
}


local Hungarian = CultureName.New(
{
	male = male,
	female = female,
	surname = surname,
	name = "Hungarian",
	code = "hu",
	replace = {
		['á'] = 'a', ['Á'] = 'A',
		['é'] = 'e', ['É'] = 'E',
		['í'] = 'i', ['Í'] = 'I',
		['ó'] = 'o', ['Ó'] = 'O',
		['ö'] = 'o', ['Ö'] = 'O',
		['ő'] = 'o', ['Ő'] = 'O',
		['ú'] = 'u', ['Ú'] = 'U',
		['ü'] = 'u', ['Ü'] = 'U',
		['ű'] = 'u', ['Ű'] = 'U',
	}
})


return Hungarian
