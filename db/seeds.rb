require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do
 user = User.new(
  email: Faker::Internet.email,
  password: "123456"
  )
  user.save!
end

10.times do
  item = Item.new(
    title:    Faker::Company.name,
    pickup_location: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: ["T-shirt", "Skirt", "Trousers", "Jeans"].sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3)
  )
  item.save!
end

size = Variable.new(sizes: i%(XS S L XL XXL))
size.save!
