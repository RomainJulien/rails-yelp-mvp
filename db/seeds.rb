# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

restaurants = [
  { name: "Le Bon Resto", address: "1 rue du Parc", category: "french" },
  { name: "Le Petit Italien", address: "5 rue des Vins", category: "italian" },
  { name: "Sushi Paradise", address: "10 rue du Japon", category: "japanese" },
  { name: "Chez Marco", address: "8 rue de la Mer", category: "belgian" },
  { name: "Wok Time", address: "12 rue des Lanternes", category: "chinese" }
]

restaurants.each do |restaurant|
  Restaurant.create(restaurant)
end

puts "Restaurants seeded successfully!"
