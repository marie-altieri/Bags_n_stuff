# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Booking.destroy_all
Bag.destroy_all
User.destroy_all

user = User.create(email: "lolo@lolo.com", password: "123456")

file = URI.open("https://images.selfridges.com/is/image/selfridges/R03713350_M?$PDP_M_ZOOM$")
bag = Bag.new(brand: "jacquemus", category: "small", color: "30€")
bag.user = user
bag.save
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")

file = URI.open("https://images.selfridges.com/is/image/selfridges/R03713350_M?$PDP_M_ZOOM$")
bag = Bag.new(brand: "jacquemus", category: "medium", color: "30€")
bag.user = user
bag.save
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")

file = URI.open("https://images.selfridges.com/is/image/selfridges/R03713350_M?$PDP_M_ZOOM$")
bag = Bag.new(brand: "jacquemus", category: "medium", color: "30€")
bag.user = user
bag.save
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")

file = URI.open("https://images.selfridges.com/is/image/selfridges/R03713350_M?$PDP_M_ZOOM$")
bag = Bag.new(brand: "jacquemus", category: "medium", color: "30€")
bag.user = user
bag.save
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")

file = URI.open("https://images.selfridges.com/is/image/selfridges/R03713350_M?$PDP_M_ZOOM$")
bag = Bag.new(brand: "jacquemus", category: "medium", color: "30€")
bag.user = user
bag.save
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")

file = URI.open("https://images.selfridges.com/is/image/selfridges/R03713350_M?$PDP_M_ZOOM$")
bag = Bag.new(brand: "jacquemus", category: "medium", color: "30€")
bag.user = user
bag.save
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")

file = URI.open("https://images.selfridges.com/is/image/selfridges/R03713350_M?$PDP_M_ZOOM$")
bag = Bag.new(brand: "jacquemus", category: "medium", color: "30€")
bag.user = user
bag.save
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")

file = URI.open("https://images.selfridges.com/is/image/selfridges/R03713350_M?$PDP_M_ZOOM$")
bag = Bag.new(brand: "jacquemus", category: "medium", color: "30€")
bag.user = user
bag.save
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
