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
Product.create(price: 15.99, name: "Item 1", description: "Insert product description here", image_url: "plant12.jpeg")
Product.create(price: 15.99, name: "Item 5", description: "Insert product description here", image_url: "plant6.png")
Product.create(price: 15.99, name: "Item 6", description: "Insert product description here", image_url: "plant7.png")
Product.create(price: 15.99, name: "Item 7", description: "Insert product description here", image_url: "plant8.png")
Product.create(price: 15.99, name: "Item 9", description: "Insert product description here", image_url: "plant10.png")
Product.create(price: 15.99, name: "Item 10", description: "Insert product description here", image_url: "plant11.png")
Product.create(price: 15.99, name: "Item 11", description: "Insert product description here", image_url: "plant2.png")
Product.create(price: 15.99, name: "Item 12", description: "Insert product description here", image_url: "plant3.png")
