Product.destroy_all
Category.destroy_all


puts "creating categories"

toys = Category.create!(title: 'Toys', pic: 'woodentoys.jpg', main: 'art')
engravings = Category.create!(title: 'Engravings', pic: 'engravings.png', main: 'art')
sculpture = Category.create!(title: 'Sculpture', pic: 'sculpture.jpeg', main: 'art')
busts = Category.create!(title: 'Busts', pic: 'busts.jpg', main: 'art')
veges = Category.create!(title: 'Vege-Patch and Planters', pic: 'vege-patch1.jpeg', main: 'garden')
garden_furniture = Category.create!(title: 'Garden Furniture', pic: 'garden-furniture.jpeg', main: 'garden')
garden_accessories = Category.create!(title: 'Garden Accessories', pic: 'garden-accessories.jpeg', main: 'garden')
bedroom = Category.create!(title: 'Bedroom', pic: 'bedroom.jpg', main: 'home')
bathroom = Category.create!(title: 'Bathroom', pic: 'bathroom.jpg', main: 'home')
lounge = Category.create!(title: 'Lounge', pic: 'lounge.jpg', main: 'home')

puts "creating products"
planter = Product.create!(title: 'planter',price: 500, category: garden_accessories)
rocking_horse = Product.create!(title: 'Rockinghorse', price: 450, category: garden_accessories)
mirror_one = Product.create!(title: 'bathroom mirror',price: 760, category: garden_accessories)
shoe_rack = Product.create!(title: 'shoe rack',price: 350, category: garden_accessories)
rocking_horse = Product.create!(title: 'Rockinghorse electric', price: 2500, category: garden_accessories)
mirror_2 = Product.create!(title: 'bedroom mirror',price: 760, category: garden_accessories)

puts "#{Product.count} products created"
puts "Let's go!"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
