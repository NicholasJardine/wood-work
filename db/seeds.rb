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
planter = Product.create!(title: 'planter', pic: 'planter.jpeg',category: veges, description: "fantastic planter. I hate you if you dont like it", price: 500)
labels = Product.create!(title: 'Vege-patch labels', pic: 'stakes1.jpg',category: veges, description: "wow. just wow.", price: 500)
bedside = Product.create!(title: 'Bedside Table', pic: 'bedside.jpeg', category: bedroom, description: "wow. just wow.", price: 500)
rocking_horse = Product.create!(title: 'Rockinghorse', pic: 'rockinghorse.jpeg',category: toys, description: "wow. just wow.", price: 500)
mirror_one = Product.create!(title: 'bathroom mirror', pic: 'brmirror.jpeg', category: bathroom, description: "wow. just wow.", price: 500)
patio_table = Product.create!(title: 'outdooor Table and bench set', pic: 'upbench.jpeg', category: garden_furniture, description: "wow. just wow.", price: 500)
garden_swing_one = Product.create!(title: 'swinging garden bench', pic: 'gardenswing2.jpeg', category: garden_furniture, description: "wow. just wow.", price: 500)
garden_swing = Product.create!(title: 'upcycled swinging bench', pic: 'gardenswing1.jpg', category: garden_furniture, description: "wow. just wow.", price: 500)
birdhouse = Product.create!(title: 'Birdhouse', pic: 'birdhouse1.jpeg', category: garden_accessories, description: "wow. just wow.", price: 500)
birdfeeder = Product.create!(title: 'Birdfeeder', pic: 'birdfeeder1.jpeg',category: garden_accessories, description: "wow. just wow.", price: 500)
patio_couch = Product.create!(title: 'Veranda couch upcycled', pic: 'garden-furniture.jpeg',category: garden_furniture, description: "wow. just wow.", price: 600)
train = Product.create!(title: 'Wooden Train', pic: 'train.jpeg',category: toys, description: "wow. just wow.", price: 600)

puts "#{Product.count} products created"
puts "Let's go!"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
