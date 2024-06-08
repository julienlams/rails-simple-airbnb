# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Supprime tous les appartements existants pour éviter les doublons lors de la réexécution de la seed
puts "destroy all"
Flat.destroy_all
puts "destruction ok"
puts "création appartements"
# Crée 4 appartements
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Cozy Loft in Paris',
  address: '25 Rue du Faubourg Saint-Antoine Paris 75012',
  description: 'Charming loft located in the heart of Paris. Perfect for couples looking for a romantic getaway.',
  price_per_night: 100,
  number_of_guests: 2
)

Flat.create!(
  name: 'Modern Apartment in New York City',
  address: '123 Broadway New York NY 10001',
  description: 'Stylish and contemporary apartment with stunning views of the city skyline. Close to all amenities and attractions.',
  price_per_night: 150,
  number_of_guests: 4
)

Flat.create!(
  name: 'Rustic Cabin in the Woods',
  address: '555 Forest Drive Anytown USA',
  description: 'Escape to nature in this cozy cabin nestled in the woods. Perfect for outdoor enthusiasts.',
  price_per_night: 50,
  number_of_guests: 2
)

puts "création appartements ok"
