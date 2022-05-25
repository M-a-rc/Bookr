# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# TODO: Write a seed
require 'faker'
puts "Creating 5 users..."
n = 0
5.times do
  user = User.create(username: Faker::Games::Pokemon.name, email: "user#{n += 1}@faker.com", password: "123456")
  rand(5..10).times do
    book = Book.new(title: Faker::Book.title, author: Faker::Book.author, category: Faker::Book.genre, image_url: "https://images.unsplash.com/photo-1610116306796-6fea9f4fae38?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770", address: Faker::Address.full_address, price: rand(1..2), user_id: user.id)
    book.save
  end
end

puts 'Finished!'
