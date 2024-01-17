# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Clear database"
Hotel.destroy_all
Room.destroy_all
puts "Create ------hotels-------------------"
Room.create(capacity: 3, price_per_night: 45)
Room.create(capacity: 2, price_per_night: 35)
Room.create(capacity: 1, price_per_night: 15)
Room.create(capacity: 3, price_per_night: 65)
puts "Created--------------------------------"
puts "Create ------hotels-------------------"
Hotel.create(name: 'AC Hotel Marseille Prado', address: '4 allée Marcel Leclerc Marseille, France 13008 ')
Hotel.create(name: 'Hôtel Moxy La Ciotat', address: '756 avenue Émile Bodin La Ciotat, France 13600 ')
Hotel.create(name: 'Hôtel Renaissance Aix-Provence II', address: '256 avenue du prado, France 13006')
Hotel.create(name: 'Hôtel Renaissance Aix-Provence', address: '256 avenue de Pérouse Aix-en-Provence, France 13100')
puts "finished"
