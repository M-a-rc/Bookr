# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Book.destroy_all

10.times do
  Book.create(title: Faker::Name.first_name, author: Faker::Name.first_name, address: Faker::Address.street_address, category: Faker::Lorem.word, publishing_date: Faker::Date.between(from: '1997-09-23', to: '2021-09-25'), overview:Faker::Lorem.sentence(word_count: 10), review:Faker::Lorem.sentence(word_count: 10), image_url:'https://static.fnac-static.com/multimedia/Images/FR/NR/62/ff/a9/11140962/1540-0/tsp20191031071127/Turquie-le-livre-de-cuisine.jpg', user_id: 1)
end
