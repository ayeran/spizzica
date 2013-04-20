# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create([{id: 1, name: "root"},{id: 2, name: "admin"},{id: 3, name: "registered"},
  {id: 4,name: "guest"}]) unless Role.count > 0

User.create([{id: 1,
   email: "veontomo@gmail.com",
   encrypted_password: "$2a$10$DH.t4UDiQ/ciOjsWuiADLuSKx3ngAIIb/.zy3vh.b92t...",
   reset_password_token: nil,
   reset_password_sent_at: nil,
   remember_created_at: nil,
   sign_in_count: 1,
   current_sign_in_at: "2013-03-12 22:16:50",
   last_sign_in_at: "2013-03-12 22:16:50",
   current_sign_in_ip: "78.13.232.170",
   last_sign_in_ip: "78.13.232.170",
   created_at: "2013-03-12 22:16:50",
   updated_at: "2013-03-12 22:16:50"}]) unless User.find_by_email("veontomo@gmail.com")


["tappo a vite", "tappo meccanico"].each do |l|
  Lid.find_or_create_by_name(l)
end

["bottiglia","lattina","bottiglia ceramica"].each do |b|
  Container.find_or_create_by_name(b)
end

["Amsterdam Brewing Company","Barley Days Brewery","Brick Brewing Co. Ltd.",
    "Sleeman Brewing & Malting Co. Ltd."].each do |manufact|
      Manufacturer.find_or_create_by_name(manufact)
end

["oro chiaro", "chiaro", "giallo paglierino", "ramato", "giallo oro", "biondo brillante",
  "trasparente", "dorato", "dorato", "giallo tenue", "biondo oro", "ambrato",
  "dorato brillante", "giallo dorato", "biondo dorato", "paglierino", "oro intenso",
  "giallo dorato carico", "giallo carico", "giallo carico intenso", "oro intenso",
  "biondo", "bruno ambrato", "ambrato", "opalescente", "chiaro filtrato", "platino",
  "ambrato carico", "giallo chiaro", "nero", "ambrato", "rosso", "arancione",
  "biondo carico", "giallo opalescente", "dorato leggermente torbido",
  "biondo sincero", "giallo rame", "tendente al bianco", "arancio dorato", "scuro",
  "rossiccio"].each do |c|
  Color.find_or_create_by_name(c)
end

["compatta", "aderente", "cremosa", "abbondante", "cremosa", "fine", "delicata",
  "fine", "evanescente", "sottile", "bianca", "cremosa", "compatta, ma poco persistente",
  "cremosa", "persistente", "compatta", "sottile", "di media persistenza", "persistente",
  "ricca", "persistente", "abbondante, ma poco persistente", "spumosa",
  "fine di media persistenza", "modesta", "di breve durata", "bianca",
  "densa", "media poco persistente", "viva", "persistente", "compatta", "persistente",
  "cremosa color caffelatte", "intensa", "densa", "corposa",
  "fine compatta persistente ed aderente", "densa", "aderente", "compatta cremosa",
  "persistente", "abbondante", "compatta", "nocciola chiaro fina cremosa",
  "molto cremosa", "cremosa", "soffice", "abbondante", "persistente",
  "corposa ma poco persistente", "pannosa", "esuberante", "assente"].each do |foam|
  Foam.find_or_create_by_name(foam)
end

["premium lager", "premium pilsner", "dortmunder", "lager", "italiana analcolica",
  "lager chiara", "lager light", "lager munchner", "pils", "premium tipo export",
  "strong lager doppio malto", "strong ale", "ale stile belga", "doppio malto",
  "strong lager", "lager extra strong", "ale stile britannico brown ale",
  "dunkel bavarese", "lager doppio malto", "doopelbock da antiche ricette medievali",
  "doppio malto d\'abbazia", "ale", "doppio malto strong ale", "weiss", "weiss kristall",
  "weizen", "hefeweizen", "dunkelweizen", "munchner hell", "stout", "trappista",
  "belgian a fermentazione spontanea", "belgian strong ale", "bionda ale cruda",
  "bionda ad alta fermentazione", "chiara d\'abbazia", "birra d\'abbazia doppio malto",
  "abbaziale, triple ad alta fermentazione", "abbazia", "birra bianca belga",
  "strong belgian ale", "ale britannico", "belgian ale", "sidro dry"].each do |beerstyle|
  Beerstyle.find_or_create_by_name(beerstyle)
end

["frizzante", "fresco", "fresco", "tonificante", "fresco", "dissetante",
  "maltato amarognolo", "di malto", "equilibrato di luppolo", "malto",
  "equilibrato molto invitante", "maltato", "leggermente di luppolo",
  "piacevolmente amara", "distinto", "rinfrescante", "fresco", "leggere note di luppolo",
  "intenso", "complesso, con nota prevalente di luppolo", "intenso", "luppolato",
  "maltato", "dissetante", "note di amaro fine", "non persistente",
  "aromatizzata con tequila", "luppolato estremamente piacevole", "assai equilibrato",
  "distintivo", "persistente", "cremoso", "fruttato", "di whisky", "intenso di cereali",
  "effervescente", "vivace", "malto ed erba di campo", "pregiato", "ricercato",
  "tutto da scoprire", "fruttato con sentore di malto", "dolce", "appetitoso", "luppolo",
  "note di vaniglia", "malto torrefatto", "sfumature di legno", "quercia", "vinoso",
  "inizialmente dolce libera aroma di cereale", "di fruttato",
  "incredibile tutto da scoprire", "deciso, inconfondibile", "pieno", "rotondo",
  "fresco floreale", "di lievito", "fresco", "sorprendente", "intenso di malto tostato",
  "fruttato", "inconfondibile nel suo genere", "molto fruttata", "elegante, complesso",
  "elegante, fruttato", "piacevolmente fruttato", "morbida al palato", "sincero",
  "rinfrescante", "di malto assai complesso", "elegante",
  "intenso ed elegante, particolarmente fruttato", "coriandolo", "pepe",
  "complesso, fruttato", "curioso ma estremamente piacevole", "rotondo, ma complesso",
  "piacevole", "armonico", "tonificante", "appetitoso", "rinfrescante"].each do |aroma|
  Aroma.find_or_create_by_name(aroma)
end

["tonificante", "amabile", "secco", "agrumato", "morbido", "gradevolmente amaro",
  "sopraffino", "pieno", "dissetante", "moderatamente amaro", "morbido", "fresco",
  "raffinato", "gradevolmente delicato", "corposo", "speziato. Prevale il dolce",
  "biscottato del malto", "sfuggente", "equilibrato con intensa nota amara", "fresco",
  "dissitente", "richiama gli odori della pampa", "gradevolmente delicato",
  "marcatamente maltato", "moderatamente fruttato", "fresco",
  "dissetante, sentore di tequila, retrogusto dolce", "leggermente amaro",
  "delicato", "frizzante", "pieno", "raffinato", "ricchezza retrolfattiva articolata",
  "mieloso", "rotondo corposo di grande personalità", "gradevole", "corposo", "forte",
  "deciso", "leggermente amaro", "forte", "intenso, ma inaspettatamente vellutato",
  "equilibrato rapporto dolce amaro", "piacevole", "disincantato", "corposo",
  "inconfondibile", "ottimo equilibrio gustativo",
  "incredibile dato dall\'aggiunta di fiori dopo il brassaggio",
  "possente", "intenso di caramello", "frizzante", "rinfrescante", "fresco",
  "acidulo di cereali", "richiama fiori di campo", "miele", "fresco", "frizzante",
  "note di limone", "banana", "note forti di caffè", "liquirizia", "equilibrato",
  "sapore di ciliegia", "sapore di pesca", "aromatico" ,"erbaceo", "malto speziato",
  "mela acerba", "luppolo", "sentori di arancia amara", "morbido al palato",
  "carico di cereali", "avvolgente", "inebriante con note di vaniglia",
  "morbido", "dolce", "fruttato", "floreale", "caldo, morbido ed equilibrato",
  "rinfrescante", "rotondo aromatico", "asciutto", "veramente raffinato", "dolce",
  "corposo", "delicato, frizzante", "asciutto", "fresco", "rotondo molto beverina",
  "di mela che si cristallizza in un tono dolce"].each do |taste|
    Taste.find_or_create_by_name(taste)
end


["maionese", "tabasco", "salame piccante", "mozzarella", "prosciutto crudo", "funghi", "insalata",
  "salsa tonnata", "prosciutto cotto", "pomodori", "carciofini", "salsa piccante", "peperoni", "speck",
  "edamer", "parmigiano", "rucola", "wurstel", "verza", "senape dolce", "salsa ai funghi porcini",
  "melanzane", "tonno", "salsa messicana", "panatina di pollo", "limone", "crema di formaggio",
  "salsa rosa", "melanzane grigliate", "alici", "pachino", "origano", "bresaola", "funghetti",
  "carciofini", "salmone", "pepe", "hamburger", "spinaci", "salsiccia", "cipolla", "pancetta",
  "caciotta", "panatina di pollo farcita con edamer", "tartufo", "radicchio grigliato", "surimi",
  "gamberetti", "polpette di pollo e tacchino", "formaggio piccante", "verza", "formaggio alle erbe",
  "cetrioli", "ketchup", "salsa mac", "formaggio fuso", "asparagi", " arrosto di tacchino",
  "formaggio bianco", "salsa allo yogurt", "formaggio", "salsa barbeque", "gorgonzola",
  "pancetta croccante", "salsa kebab", "fesa di tacchino", "senape", "wurstel gigante", "basilico",
  "lardo di colonnata", "miele", "mix di spezie", "pinoli", "ruchetta", "funghi porcini", "radicchio",
  "profumo di tartufo", "capperi", "insalata verde", "mais", "fagioli", "scaglie di parmigiano",
  "noci", "olio di oliva", "feta", "olive", "polpa di granchio", "arancia", "aceto balsamico",
  "radicchio trevigiano", "pere", "cuori di palma", "germogli di soia",
  "menta", "sgombro", "carote"].each do |ingr|
    Ingredient.find_or_create_by_name(ingr.strip)
end

["ricevuto","accettato","non accettato","confermato","non confermato","in elaborazione","in consegna",
  "consegnato","non consegnato","cancellato"].each do |status|
    Status.find_or_create_by_name(status.strip)
end

["Afghanistan", "Aland Islands", "Albania", "Algeria", "American Samoa", "Andorra",
  "Angola", "Anguilla", "Antarctica", "Antigua And Barbuda", "Argentina", "Armenia",
  "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh",
  "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia",
  "Bosnia and Herzegowina", "Botswana", "Bouvet Island", "Brazil",
  "British Indian Ocean Territory", "Brunei Darussalam", "Bulgaria", "Burkina Faso",
  "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands",
  "Central African Republic", "Chad", "Chile", "China", "Christmas Island",
  "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo",
  "Congo, the Democratic Republic of the", "Cook Islands", "Costa Rica", "Cote d'Ivoire",
  "Croatia", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica",
  "Dominican Republic", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea",
  "Eritrea", "Estonia", "Ethiopia", "Falkland Islands (Malvinas)", "Faroe Islands",
  "Fiji", "Finland", "France", "French Guiana", "French Polynesia",
  "French Southern Territories", "Gabon", "Gambia", "Georgia", "Germany", "Ghana",
  "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala",
  "Guernsey", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard and McDonald Islands",
  "Holy See (Vatican City State)", "Honduras", "Hong Kong", "Hungary", "Iceland", "India",
  "Indonesia", "Iran, Islamic Republic of", "Iraq", "Ireland", "Isle of Man", "Israel",
  "Italy", "Jamaica", "Japan", "Jersey", "Jordan", "Kazakhstan", "Kenya", "Kiribati",
  "Korea, Democratic People's Republic of", "Korea, Republic of", "Kuwait", "Kyrgyzstan",
  "Lao People's Democratic Republic", "Latvia", "Lebanon", "Lesotho", "Liberia",
  "Libyan Arab Jamahiriya", "Liechtenstein", "Lithuania", "Luxembourg", "Macao",
  "Macedonia, The Former Yugoslav Republic Of", "Madagascar", "Malawi", "Malaysia",
  "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", "Mauritania", "Mauritius",
  "Mayotte", "Mexico", "Micronesia, Federated States of", "Moldova, Republic of",
  "Monaco", "Mongolia", "Montenegro", "Montserrat", "Morocco", "Mozambique", "Myanmar",
  "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia",
  "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island",
  "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau",
  "Palestinian Territory, Occupied", "Panama", "Papua New Guinea", "Paraguay", "Peru",
  "Philippines", "Pitcairn", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion",
  "Romania", "Russian Federation", "Rwanda", "Saint Barthelemy", "Saint Helena",
  "Saint Kitts and Nevis", "Saint Lucia", "Saint Pierre and Miquelon",
  "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Sao Tome and Principe",
  "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore",
  "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa",
  "South Georgia and the South Sandwich Islands", "Spain", "Sri Lanka", "Sudan",
  "Suriname", "Svalbard and Jan Mayen", "Swaziland", "Sweden", "Switzerland",
  "Syrian Arab Republic", "Taiwan, Province of China", "Tajikistan",
  "Tanzania, United Republic of", "Thailand", "Timor-Leste", "Togo", "Tokelau", "Tonga",
  "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands",
  "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom",
  "United States", "United States Minor Outlying Islands", "Uruguay", "Uzbekistan",
  "Vanuatu", "Venezuela", "Viet Nam", "Virgin Islands, British", "Virgin Islands, U.S.",
  "Wallis and Futuna", "Western Sahara", "Yemen", "Zambia", "Zimbabwe"].each do |country|
    Country.find_or_create_by_name(country.strip)
end