# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# TODO: Write a seed
require 'faker'

Book.destroy_all
User.destroy_all

puts "Creating 5 users..."

n = 0
5.times do
  User.create(username: "user#{n += 1}", email: "user#{n += 1}@faker.com", password: "123456")
end

puts "Creating Books"

Book.create(title: "The Martian",
            author: "Andy Weir",
            category: "Fiction",
            user_id: 1,
            address: "14, rue Ravez Bordeaux",
            overview: "Un des meilleurs thrillers que j’aie lus depuis longtemps : Apollo 13 puissance dix ! » - Douglas Preston « Impossible à lâcher ! Un mélange rare de bonne histoire, de personnages réalistes et de précision technique fascinante. » - Chris Hadfield, commandant de la Station spatiale internationale. « Robinson Crusoé sur Mars, au XXIe siècle : fort, résistant et du cran à revendre. » - Steve Berry, auteur de L’Héritage des Templiers « La science à la portée de tous, pour un suspense fascinant. » - Publishers Weekly Mark Watney est l’un des premiers humains à poser le pied sur Mars. Il pourrait bien être le premier à y mourir. Lorsqu’une tempête de sable mortelle force ses coéquipiers à évacuer la planète, Mark se retrouve seul et sans ressources, irrémédiablement coupé de toute communication avec la Terre. Pourtant Mark n’est pas prêt à baisser les bras. Ingénieux, habile de ses mains et terriblement têtu, il affronte un par un des problèmes en apparence insurmontables. Isolé et aux abois, parviendra-t-il à défier le sort ? Le compte à rebours a déjà commencé...",
            price: 2.0,
            image_url: "http://books.google.com/books/content?id=pgUUBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
            publishing_date: '2017-01-09'
)

Book.create(title: "Lean Startup",

  author: "Eric Ries",
  category: "Business & Economics",
  user_id: 2,
  address: "20 cours du Medoc Bordeaux",
  overview: "The Lean Startup by Eric Ries is considered a bible in the tech entrepreneurship community. It’s a methodology for creating businesses that focuses you on finding out what customers actually want. It uses concepts of scientific experimentation to prove that you’re making progress. It encourages you to launch as early and cheaply as possible so you don’t waste time and money.

  Learn the critical concepts of the Minimum Viable Product, cohort metrics, A/B testing, virality, and startup pivots.",
  price: 3.0,
  image_url: "http://books.google.com/books/content?id=tvfyz-4JILwC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
  publishing_date: '2014-01-09'
)

Book.create(title: "Harry Potter and the prisoner of Azkaban",

  author: "JK Rowling",
  category: "Juvenile Fiction",
  user_id: 2,
  address: "15, rue des Bahutiers Bordeaux",
  overview: "When the Knight Bus crashes through the darkness and screeches to a halt in front of him, it's the start of another far from ordinary year at Hogwarts for Harry Potter. Sirius Black, escaped mass-murderer and follower of Lord Voldemort, is on the run - and they say he is coming after Harry. In his first ever Divination class, Professor Trelawney sees an omen of death in Harry's tea leaves . But perhaps most terrifying of all are the Dementors patrolling the school grounds, with their soul-sucking kiss. These new editions of the classic and internationally bestselling, multi-award-winning series feature instantly pick-up-able new jackets by Jonny Duddle, with huge child appeal, to bring Harry Potter to the next generation of readers. It's time to PASS THE MAGIC ON.",
  price: 3.0,
  image_url: "http://books.google.com/books/content?id=lZrHBAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  publishing_date: '2002-01-09'
)

Book.create(title: "Harry Potter and the Philosopher's Stone",
              author: "JK Rowling",
              category: "Juvenile Fiction",
              user_id: 1,
              address: "Paris",
              overview: "Celebrate 20 years of Harry Potter magic! Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry's eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is about to begin!These new editions of the classic and internationally bestselling, multi-award-winning series feature instantly pick-up-able new jackets by Jonny Duddle, with huge child appeal, to bring Harry Potter to the next generation of readers. It's time to PASS THE MAGIC ON ...",
              price: 1.0,
              image_url: "http://books.google.com/books/content?id=HksgDQAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
              publishing_date: '2014-01-09'
)

Book.create(title: "How to consciously design your ideal future",
  author: "Benjamin Hardy",
  category: "Action theory",
  user_id: 2,
  address: "101, rue Notre-Dame, Bordeaux",
  overview: "Compilation of articles originally published at the website Thought Catalog.",
  price: 2.0,
  image_url: "http://books.google.com/books/content?id=WGjpjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  publishing_date: '2016-03-13'
)

puts 'Seeding complete!'
