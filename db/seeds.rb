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

["Lager","Stout","White beer"].each do |style|
  Beerstyle.find_or_create_by_name(style)
end

["chiaro","ambrato","dorato"].each do |c|
  Color.find_or_create_by_name(c)
end

["esuberante","fine","persistente","fitta","cremosa","compatta","ricca"].each do |foam|
  Foam.find_or_create_by_name(foam)
end

["lager","weiss","stout","doppio malto","italiana analcolica","premium"].each do |beerstyle|
  Beerstyle.find_or_create_by_name(beerstyle)
end

["frizzante","fresco","tonificante","dissettante","malato amarognolo"].each do |aroma|
  Aroma.find_or_create_by_name(aroma)
end

["tonificante","amabile","secco","agrumato","fresco","morbido",
  "gradevolmente amaro","sopraffino"].each do |taste|
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
