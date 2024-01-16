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


puts "Create ------hotels-------------------"
Hotel.create(name: 'Hôtel A', address: '123 Rue A')
Hotel.create(name: 'Hôtel B', address: '456 Rue B')
Hotel.create(name: 'Hôtel C', address: '789 Rue C')
puts "finished"
