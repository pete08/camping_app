# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

item = Supply.new(name: "pick axe", description: "an axe for ice", price: 50.75)
item.save
item = Supply.new(name: "sunglasses", description: "UV proctection for your eyes", price: 25.99)
item.save
item = Supply.new(name: "stove", description: "steel stove gauranteed for over 50 years", price: 29.75)
item.save
item = Supply.new(name: "propane", description: "portable propane for your camping stove", price: 15.01)
item.save
item = Supply.new(name: "rain fly", description: "protect your tent from the elements", price: 50.50)
item.save
item = Supply.new(name: "tent stakes", description: "steel tent stakes", price: 2.50)
item.save