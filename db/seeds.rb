# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Role.create!(name: 'Standard')
Role.create!(name: 'Inventory Manager')
Role.create!(name: 'Manager')
Role.create!(name: 'SuperAdmin')

(1..30).each do |i|
  Location.create!(city: "city #{i}", region: "region #{i}", country: "#{i}", street: "12#{i} Fake Street", unit: "#{i}", address_code: "#{i}", building: "#{i}")
end


User.create!(username: 'rdale', password: 'abc123abc123', first_name: 'Robert', last_name: 'Dale', role_id: 4, location_id: 1)
User.create!(username: 'vray', password: 'abc111abc111', first_name: 'Victor', last_name: 'Lozoya', role_id: 4, location_id: 1)
User.create!(username: 'xsalmon', password: 'abc222abc222', first_name: 'Xitlally', last_name: 'Salmon', role_id: 4, location_id: 1)
User.create!(username: 'gcarrillo', password: 'abc333abc333', first_name: 'Gilbert', last_name: 'Carrillo', role_id: 4, location_id: 2)
User.create!(username: 'jsteele', password: 'abc444abc444', first_name: 'Jonathan', last_name: 'Steele', role_id: 4, location_id: 2)
User.create!(username: 'zmorgan', password: 'abc444abc444', first_name: 'Zachary', last_name: 'Morgan', role_id: 4, location_id: 2)

(1..4).each do |i|
  User.create!(username: "joeuser#{i}", password: 'testforus', first_name: 'Joe', last_name: 'User', role_id: i, location_id: 3)
end

(1..20).each do |i|
  Item.find_or_create_by!(name: "AIRCAM III #{i}", price: 99.99, quantity: 1, location_id: 1, user_id: 1)
  Item.find_or_create_by!(name: "Software #{i}", price: 49.99, quantity: 5, location_id: 2, user_id: 2)
end

(20..40).each do |i|
  Item.find_or_create_by!(name: "AIRCAM III #{i}", price: 99.99, quantity: 1, location_id: 3, user_id: 3)
  Item.find_or_create_by!(name: "Software #{i}", price: 49.99, quantity: 5, location_id: 1, user_id: 4)
end

(1..10).each do |i|
  Item.create!(name: "computer#{i}", price: 1799.99, quantity: 1, location_id: i % 3, user_id: 5, brand: "HP", model: "Revolve", serial_number: "HP05BXDC0016#{i}", computer_attributes: {utag: "U5678#{i + 10}", cpu: 3.3, ram: 16, hdd: 500})
end

(1..4).each do |i|
  Ticket.create!(title: "Won't Power On #{i}", status: "Open", priority: 1, description: "Computer does not power on when plugged in.", item_id: "#{83+i}")
end


