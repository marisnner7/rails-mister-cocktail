# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating.."
Ingredient.create(name: "spider")
Ingredient.create(name: "Pumpkin Juice")
Ingredient.create(name: "Fudge Flies")

Cocktail.create(name: "Butterbeer")
Cocktail.create(name: "Unicorn Blood Cocktail")
Cocktail.create(name: " Polyjuice Potion")
Cocktail.create(name: "Witches Brew Cocktail:")
Cocktail.create(name: " Voldemort Cocktail:")

puts "Done!"
