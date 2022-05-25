# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# TODO: Write a seed
require 'faker'

Book.destroy_all unless Rails.env.production?
User.destroy_all unless Rails.env.production?

puts "Creating 5 users..."

n = 0
5.times do
  User.create(username: Faker::Games::Pokemon.name, email: "user#{n += 1}@faker.com", password: "123456")
end

puts "Users Created"
puts "Creating Books"

User.all.each do |user|
  Book.create(title: Faker::Book.title, author: Faker::Book.author, category: Faker::Book.genre, image_url: "https://images.unsplash.com/photo-1610116306796-6fea9f4fae38?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770", address: ['14, rue Ravez Bordeaux', '101, rue Notre-Dame', '53, rue Saint-James', '26, rue de la devise Bordeaux', '36, rue Cheverus Bordeaux', '15, rue des Bahutiers', '108, rue Abbé-de-l’Épee Bordeaux', '27, rue Buhan Bordeaux', 'Angle rue Cancera et rue Vinet', '29, rue Cheverus', '87, quai des Queyries'].sample(1), price: rand(1..2), overview: Faker::Movie.quote, user_id: user.id)
end

puts 'Seeding complete!'
