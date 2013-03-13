# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Role.create([{id: 1, name: "root"},{id: 2, name: "admin"},{id: 3, name: "registered"},
  {id: 4,name: "guest"}])
  
User.create([{[id: 1, email: "veontomo@gmail.com", encrypted_password: "$2a$10$DH.t4UDiQ/ciOjsWuiADLuSKx3ngAIIb/.zy3vh.b92t...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2013-03-12 22:16:50", last_sign_in_at: "2013-03-12 22:16:50", current_sign_in_ip: "78.13.232.170", last_sign_in_ip: "78.13.232.170", created_at: "2013-03-12 22:16:50", updated_at: "2013-03-12 22:16:50"]}])

