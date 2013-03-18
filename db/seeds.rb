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
