# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Order.delete_all
Comment.delete_all
Product.delete_all
Product.create(price: 12.99, name: "Wooden Ornament", description: "3x3inches", image_url: "art/ornament.jpg")
Product.create(price: 85.99, name: "Stone Angel", description: "1x3feet", image_url: "art/babyangel.jpg")
Product.create(price: 45.99, name: "Ceramic Angel", description: "4x6inches", image_url: "art/angel_ceramic.jpg")
Product.create(price: 12.99, name: "Metal Figurines", description: "1.5x2.75inches", image_url: "art/monkey_figurines.jpg")
Product.create(price: 65.99, name: "Acrylic Canvas", description: "3x3feet", image_url: "art/ocean_canvas.jpg")
Product.create(price: 25.99, name: "Acrylic Canvas", description: "3x1.5feet", image_url: "art/cubism.jpg")
Product.create(price: 15.99, name: "3D Printed Skull", description: "0.5x0.5feet", image_url: "10.jpg")
Product.create(price: 25.99, name: "Charcoal Portrait", description: "1x0.5feet", image_url: "art/charcoal-portrait.png")
