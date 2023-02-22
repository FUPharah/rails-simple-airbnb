# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "creating flats"
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

3.times do
  name = Faker::Fantasy::Tolkien.poem
  address = Faker::Movies::HowToTrainYourDragon.location
  description = Faker::Movies::VForVendetta.quote
  price_per_night = rand(25..100)
  number_of_guests = rand(1-5)
  flat = Flat.new(name: name, address: address, description: description, price_per_night: price_per_night, number_of_guests: number_of_guests)
  flat.save!
end
