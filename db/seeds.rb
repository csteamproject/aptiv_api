# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: 'rdale', password: 'abc123abc123', first_name: 'Robert', last_name: 'Dale')
# User.find_or_create_by!(username: 'vray', password: 'abc111abc111', first_name: 'Victor', last_name: 'Lozoya')
# User.find_or_create_by!(username: 'xsalmon', password: 'abc222abc222', first_name: 'Xitlally', last_name: 'Salmon')
# User.find_or_create_by!(username: 'gcarrillo', password: 'abc333abc333', first_name: 'Gilbert', last_name: 'Carrillo')
# User.find_or_create_by!(username: 'jsteele', password: 'abc444abc444', first_name: 'Jonathan', last_name: 'Steele')
# User.find_or_create_by!(username: 'zmorgan', password: 'abc444abc444', first_name: 'Zachary', last_name: 'Morgan')


(1..40).each do |i|
  Item.find_or_create_by!(name: "AIRCAM III #{i}", price: 99.99, quantity: 1)
  Item.find_or_create_by!(name: "Software #{i}", price: 49.99, quantity: 5)
end

(1..22).each do |i|
  Item.find_or_create_by!(name: "computer#{i}", price: 1799.99, quantity: 1)
  Computer.find_or_create_by!(utag: "U5678#{i + 10}", cpu: '3.3', ram: '16', hdd: '500', item_id: i + 80)
end

