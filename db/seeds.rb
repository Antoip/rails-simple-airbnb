# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating sample flats"

20.times do
  flat = {}
  flat[:name] = Faker::Address.street_name
  flat[:address] = Faker::Address.full_address
  flat[:description] = Faker::Restaurant.review
  flat[:price_per_night] = rand(30..500)
  flat[:number_of_guests] = rand(1..20)
  Flat.new(flat).save!
end
