# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  Book.create(title: Faker::Name.first_name, author: Faker::Name.first_name, address: Faker::Name.first_name, category: Faker::Name.first_name, rating:3, overview:Faker::Name.first_name, review:Faker::Name.first_name, image_url:'https://www.google.com/search?q=chien&sxsrf=ALiCzsbYrGKkxO93RRjB-wKHGpXdEiVS8w:1653388424479&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiOz93t9_f3AhUw4YUKHY9eCloQ_AUoAXoECAIQAw&biw=823&bih=789&dpr=2#imgrc=m3Grp2xHgMbdVM', user_id: 1)
end
