# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.destroy_all
Person.destroy_all
FoundDog.destroy_all

5.times do
  Person.create!(
    name: Faker::Name.name,
    phone_number: Faker::PhoneNumber.phone_number
  )
end

5.times do
  Dog.create!(
    name: Faker::Creature::Dog.name,
    age: rand(1..10)
  )
end

5.times do
  FoundDog.create!(
    person: Person.all.sample,
    dog: Dog.all.sample,
    location: Faker::Address.full_address,
    image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*"
  )
end