# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

x = Person.new(first_name: "Kevin", last_name: "Nagel", phone_number: 1231231233, phone_number: 123123, email: "werw", user_id: 1)
x.save!

x = Person.new(first_name: "Jeff", last_name: "Mills", phone_number: 1231231233, phone_number: 1231231, email: "werqww",user_id: 1)
x.save!

x = Person.new(first_name: "Shannon", last_name: "Peterson", phone_number: 1231231233, phone_number: 123166623, email: "werwdfgd", user_id: 1)
x.save!

x = Person.new(first_name: "Andy", last_name: "Oja", phone_number: 1231231233, phone_number: 123123233, email: "wedfgasdrw", user_id: 2)
x.save!

