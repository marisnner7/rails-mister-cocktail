# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'


puts 'Destroying All Cocktails'

Cocktail.destroy_all

puts 'creating..'
Ingredient.create(name: 'spider')
Ingredient.create(name: 'Pumpkin Juice')
Ingredient.create(name: 'Fudge Flies')


file = URI.open('https://res.cloudinary.com/dunoktrky/image/upload/v1593621387/harry%20portion/butterbeer_jsex8i.jpg')
butterbear = Cocktail.new(name: 'butterbear', description: "A great console")
butterbear.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


puts 'Done!'

