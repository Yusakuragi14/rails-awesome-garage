# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing data (optional)
Owner.destroy_all
Car.destroy_all

# Create Owners
owner1 = Owner.create!(nickname: "SpeedsterSam")
owner2 = Owner.create!(nickname: "ClassicCarl")
owner3 = Owner.create!(nickname: "EcoEmma")

# Create Cars with different owners
Car.create!(brand: "Tesla", model: "Model 3", year: 2022, fuel: "Electric", owner: owner1)
Car.create!(brand: "Ford", model: "Mustang", year: 1967, fuel: "Gasoline", owner: owner2)
Car.create!(brand: "Toyota", model: "Prius", year: 2018, fuel: "Hybrid", owner: owner3)

puts "✅ Seed data successfully created!"
