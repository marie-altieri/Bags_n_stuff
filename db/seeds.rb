# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Bag.destroy_all
User.destroy_all

user = User.create(email: "lolo@lolo.com", password: "123456")

12.times do
  Bag.create(
    brand: ["Hermes","Chanel","Goyard", "Louis Vuitton", "Dior", "Gucci", "Jacquemus","Céline", "Chloé", "Zadig & Voltaire"].sample,
    category: ["big","small","baguette", "hand bang", "chain bag", "saddle bag", "purse", "crossbody bag", "belt bag"].sample,
    color: ["red", "white","black","purple", "blue", "green", "brown"].sample,
    user_id: user.id
  )
end
