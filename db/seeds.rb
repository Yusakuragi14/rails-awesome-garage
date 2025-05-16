require "cloudinary"

Owner.destroy_all
Car.destroy_all

# Create Owners
owner1 = Owner.create!(nickname: "SpeedsterSam")
owner2 = Owner.create!(nickname: "ClassicCarl")
owner3 = Owner.create!(nickname: "EcoEmma")

Car.find_or_create_by!(
  brand: "Tesla",
  model: "Model 3",
  year: 2022,
  fuel: "Electric",
  owner: owner1,
  image_url: "https://res.cloudinary.com/di9w8jptl/image/upload/v1747392776/s1bndfbjqrlcpc3b8ike.jpg"
)

Car.find_or_create_by!(
  brand: "Ford",
  model: "Mustang",
  year: 1967,
  fuel: "Gasoline",
  owner: owner2,
  image_url: "https://res.cloudinary.com/di9w8jptl/image/upload/v1747392943/photo-1547744152-14d985cb937f_yeyrxp.jpg"
)

Car.find_or_create_by!(
  brand: "Toyota",
  model: "Prius",
  year: 2018,
  fuel: "Hybrid",
  owner: owner3,
  image_url: "https://res.cloudinary.com/di9w8jptl/image/upload/v1747392967/photo-1611580568467-a8e2bb344bbf_xcqxav.jpg"
)

puts "✅ Seed data successfully created!"
