# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
Bag.destroy_all
User.destroy_all

user = User.create(email: "lolo@lolo.com", password: "123456")

12.times do
  Bag.create(
    brand: ["Hermes","Chanel","Goyard", "Louis Vuitton", "Dior", "Gucci", "Jacquemus","Céline", "Chloé", "Zadig & Voltaire"].sample,
    category: ["big","small","baguette", "Hand Bag", "Chain Bag", "Saddle Bag", "Purse", "Crossbody Bag", "Belt Bag"].sample,
    color: ["30€", "26€","150€","120€", "110€", "40€", "25€"].sample,
    user_id: user.id
  )
end
