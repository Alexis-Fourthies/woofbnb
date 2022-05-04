# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    City.create(city_name: Faker::Address.city)
end

10.times do
    Dogsitter.create(first_name: Faker::Name.first_name, city_id: rand(1..10))
end

10.times do
    Dog.create(dog_name: Faker::Name.first_name, city_id: rand(1..10))
end

10.times do
    Stroll.create(dogsitter_id: rand(1..10), dog_id: rand(1..10))
end
