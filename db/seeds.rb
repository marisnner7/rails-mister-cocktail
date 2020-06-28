# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying All Cocktails"

Cocktail.destroy_all

puts "creating.."
Ingredient.create(name: "spider")
Ingredient.create(name: "Pumpkin Juice")
Ingredient.create(name: "Fudge Flies")

butter_beer = Cocktail.create(name: "butter beer")
butter_beer.save



puts "Done!"
