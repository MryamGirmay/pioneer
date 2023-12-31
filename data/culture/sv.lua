-- Copyright © 2008-2024 Pioneer Developers. See AUTHORS.txt for details
-- Licensed under the terms of the GPL v3. See licenses/GPL-3.txt

-- Data from 2014.
-- http://www.scb.se/sv_/Hitta-statistik/Statistik-efter-amne/Befolkning/Amnesovergripande-statistik/Namnstatistik/

local CultureName = require './common'

local male = {
	'Adam',
	'Albin',
	'Alexander',
	'Alf',
	'Allan',
	'Anders',
	'Andreas',
	'Anton',
	'Arne',
	'Arvid',
	'Axel',
	'Bengt',
	'Bernt',
	'Bertil',
	'Björn',
	'Bo',
	'Börje',
	'Christer',
	'Christian',
	'Christoffer',
	'Claes',
	'Dan',
	'Daniel',
	'David',
	'Elias',
	'Emanuel',
	'Emil',
	'Erik',
	'Filip',
	'Fredrik',
	'Georg',
	'Gunnar',
	'Gustav',
	'Göran',
	'Gösta',
	'Hans',
	'Henrik',
	'Hugo',
	'Håkan',
	'Ingemar',
	'Ingvar',
	'Jakob',
	'Jan',
	'Joakim',
	'Johan',
	'Johannes',
	'John',
	'Johnny',
	'Jonas',
	'Jonathan',
	'Josef',
	'Jörgen',
	'Karl',
	'Kenneth',
	'Kent',
	'Kjell',
	'Kurt',
	'Lars',
	'Leif',
	'Lennart',
	'Linus',
	'Lucas',
	'Ludvig',
	'Magnus',
	'Marcus',
	'Martin',
	'Mats',
	'Mattias',
	'Mikael',
	'Niklas',
	'Nils',
	'Olof',
	'Oskar',
	'Ove',
	'Patrik',
	'Per',
	'Peter',
	'Rickard',
	'Robert',
	'Robin',
	'Roger',
	'Roland',
	'Rolf',
	'Rune',
	'Sebastian',
	'Simon',
	'Stefan',
	'Sten',
	'Stig',
	'Sven',
	'Thomas',
	'Tobias',
	'Tommy',
	'Torbjörn',
	'Ulf',
	'Viktor',
	'Wilhelm',
	'William',
	'Åke'
}

local female = {
	'Agneta',
	'Alexandra',
	'Alice',
	'Amanda',
	'Anette',
	'Anita',
	'Ann',
	'Ann-Christin',
	'Ann-Marie',
	'Anna',
	'Anneli',
	'Annika',
	'Astrid',
	'Barbro',
	'Berit',
	'Birgit',
	'Birgitta',
	'Britt',
	'Britta',
	'Camilla',
	'Carina',
	'Caroline',
	'Cecilia',
	'Charlotta',
	'Charlotte',
	'Ebba',
	'Elin',
	'Elisabeth',
	'Ellen',
	'Ellinor',
	'Elsa',
	'Emelie',
	'Emilia',
	'Emma',
	'Erika',
	'Eva',
	'Frida',
	'Gun',
	'Gunilla',
	'Gunnel',
	'Hanna',
	'Helen',
	'Helena',
	'Ida',
	'Inga',
	'Ingeborg',
	'Ingegerd',
	'Inger',
	'Ingrid',
	'Irene',
	'Isabelle',
	'Jenny',
	'Jessica',
	'Johanna',
	'Josefin',
	'Julia',
	'Karin',
	'Karolina',
	'Katarina',
	'Kerstin',
	'Klara',
	'Kristin',
	'Kristina',
	'Lena',
	'Linda',
	'Linnéa',
	'Lisa',
	'Lisbeth',
	'Louise',
	'Lovisa',
	'Madeleine',
	'Maj',
	'Maja',
	'Malin',
	'Margareta',
	'Maria',
	'Marianne',
	'Marie',
	'Matilda',
	'Mona',
	'Monica',
	'Märta',
	'Pia',
	'Rebecka',
	'Rut',
	'Sandra',
	'Sara',
	'Siv',
	'Sofia',
	'Sofie',
	'Solveig',
	'Sonja',
	'Susanne',
	'Therese',
	'Ulla',
	'Ulrika',
	'Viktoria',
	'Viola',
	'Yvonne',
	'Åsa'
}

local surname = {
	'Abrahamsson',
	'Andersson',
	'Andreasson',
	'Arvidsson',
	'Axelsson',
	'Bengtsson',
	'Berg',
	'Berggren',
	'Berglund',
	'Bergman',
	'Bergqvist',
	'Bergström',
	'Björk',
	'Björklund',
	'Blom',
	'Blomqvist',
	'Claesson',
	'Dahlberg',
	'Danielsson',
	'Ek',
	'Eklund',
	'Ekström',
	'Eliasson',
	'Engström',
	'Eriksson',
	'Falk',
	'Forsberg',
	'Fransson',
	'Fredriksson',
	'Gunnarsson',
	'Gustafsson',
	'Hansen',
	'Hansson',
	'Hedlund',
	'Hellström',
	'Henriksson',
	'Hermansson',
	'Holm',
	'Holmberg',
	'Holmgren',
	'Holmqvist',
	'Håkansson',
	'Isaksson',
	'Jakobsson',
	'Jansson',
	'Johansson',
	'Jonasson',
	'Jonsson',
	'Jönsson',
	'Karlsson',
	'Larsson',
	'Liljewalch',
	'Lind',
	'Lindberg',
	'Lindgren',
	'Lindholm',
	'Lindqvist',
	'Lindström',
	'Lund',
	'Lundberg',
	'Lundgren',
	'Lundin',
	'Lundqvist',
	'Lundström',
	'Löfgren',
	'Magnusson',
	'Martinsson',
	'Mattsson',
	'Månsson',
	'Mårtensson',
	'Nilsson',
	'Norberg',
	'Nordin',
	'Nordström',
	'Nyberg',
	'Nyström',
	'Olofsson',
	'Olsson',
	'Persson',
	'Pettersson',
	'Pålsson',
	'Samuelsson',
	'Sandberg',
	'Sandström',
	'Sjöberg',
	'Sjögren',
	'Ström',
	'Strömberg',
	'Sundberg',
	'Sundström',
	'Svensson',
	'Söderberg',
	'Viklund',
	'Wallin',
	'Wikström',
	'Åberg',
	'Åkesson',
	'Åström',
	'Öberg',
}

local Swedish = CultureName.New({
	male = male,
	female = female,
	surname = surname,
	name = "Swedish",
	code = "sv",
	replace = {
		["å"] = "a", ["Å"] = "A",
		["ä"] = "a", ["Ä"] = "A",
		["ö"] = "o", ["Ö"] = "O"
	}
})

return Swedish
