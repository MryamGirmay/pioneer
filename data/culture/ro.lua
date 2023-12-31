-- Copyright © 2008-2024 Pioneer Developers. See AUTHORS.txt for details
-- Licensed under the terms of the GPL v3. See licenses/GPL-3.txt

-- DONE:
-- https://www.momjunction.com/articles/common-romanian-surnames-last-names-meanings_00497794/
-- https://www.romaniaexperience.com/list-of-romanian-names-for-girls-and-boys/

-- TODO:
-- https://www.names.org/lists/by-origin/romanian/

local CultureName = require './common'

local male = {
    "Adrian",
    "Alex",
	"Alexandru",
    "Alin",
    "Andrei",
    "Anton",
    "Aurel",
    "Bogdan",
    "Calin",
    "Catalin",
    "Carol",
    "Cezar",
    "Ciprian",
    "Claudiu",
    "Constantin",
    "Cornel",
    "Cosmin",
    "Cristian",
    "Dan",
	"Daniel",
    "Doru",
    "Dragos",
    "Emil",
    "Eugen",
    "Eusebiu",
    "Filip",
    "Flaviu",
    "Florin",
    "Gabi",
	"Gabriel",
    "George",
    "Gheorghe",
    "Grigore",
    "Horia",
    "Ion",
	"Ioan",
    "Iulian",
    "Laurentiu",
    "Liviu",
    "Lucian",
    "Marian",
    "Marius",
    "Mihai",
    "Mircea",
    "Narcis",
    "Nelu",
    "Nicolae",
    "Octavian",
    "Ovidiu",
    "Petre",
    "Radu",
    "Razvan",
    "Remus",
    "Robert",
    "Sebastian",
    "Sergiu",
    "Silviu",
    "Sorin",
    "Stefan",
    "Teodor",
    "Tiberiu",
    "Vasile",
    "Vlad"
}

local female = {
	"Adelina",
    "Adina",
    "Adriana",
    "Alina",
    "Ana",
    "Ana-Maria",
    "Anca",
    "Andreea",
    "Andra",
    "Bianca",
    "Camelia",
    "Carmen",
    "Catalina",
    "Cristina",
    "Claudia",
    "Corina",
    "Doina",
    "Dana",
    "Delia",
    "Diana",
    "Elena",
    "Elvira",
    "Emilia",
    "Ecaterina",
    "Florina",
    "Felicia",
    "Gabriela",
    "Georgiana",
    "Ioana",
    "Iulia",
    "Irina",
    "Lacramioara",
    "Laura",
    "Lavinia",
    "Larisa",
    "Luisa",
	"Luiza",
    "Luminita",
    "Madalina",
    "Maria",
    "Mara",
    "Margareta",
    "Mariana",
    "Mihaela",
    "Mirabela",
    "Monica",
    "Mioara",
    "Nadia",
    "Narcisa",
    "Nicoleta",
    "Oana",
    "Olivia",
    "Otilia",
    "Paula",
    "Petronela",
    "Raluca",
    "Ramona",
    "Rodica",
    "Roxana",
    "Sabina",
    "Sanda",
    "Simona",
    "Smaranda",
    "Sorina",
    "Sorana",
    "Stefania",
    "Tatiana",
    "Teodora",
    "Tania",
    "Valentina",
    "Vasilica",
    "Violeta",
    "Virginia",
    "Zoe"
}


local surname = {
	"Albescu",
	"Albu",
	"Aldea",
	"Andrei",
	"Ardelean",
	"Baciu",
	"Balan",
	"Barbaneagra",
	"Barbu",
	"Bogdan",
	"Botezatu",
	"Bucur",
	"Cazacu",
	"Cel Tradat",
	"Ciobanu",
	"Cojocaru",
	"Craioveanu",
	"Creţu",
	"Dalca",
	"Dan",
	"Dascălu",
	"Dragavei",
	"Eder",
	"Enache",
	"Erner",
	"Fieraru",
	"Fischer",
	"Floarea",
	"Florescu",
	"Funar",
	"Gheata",
	"Grosu",
	"Hatmanu",
	"Hofer",
	"Iordanescu",
	"Ioveanu",
	"Lazarescu",
	"Luca",
	"Lungu",
	"Lupu",
	"Lupei",
	"Maier",
	"Mayer",
	"Mitrea",
	"Munteanu",
	"Muller",
	"Nectaria",
	"Net",
	"Nicolescu",
	"Popa",
	"Pichler",
	"Radu",
	"Reiter",
	"Romanescu",
	"Roşu",
	"Rusu",
	"Sala",
	"Sandu",
	"Schmidt",
	"Segarceanu",
	"Stefan",
	"Skutnik",
	"Stan",
	"Stoian",
	"Stoica",
	"Suta",
	"Tarniceriu",
	"Tecuceanu",
	"Ungureanu",
	"Vacarescu",
	"Vlad",
	"Vulpe",
	"Weber",
	"Zamfir",
	"Zugravescu"
}

local Romanian = CultureName.New(
{
	male = male,
	female = female,
	surname = surname,
	name = "Romanian",
	code = "ro",
	replace = {
		['ş'] = 's', ['Ş'] = 'S',
		['ă'] = 'a', ['Ă'] = 'A',
		['î'] = 'i', ['Î'] = 'I',
	}
})

return Romanian
