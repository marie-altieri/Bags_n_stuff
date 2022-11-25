# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Review.destroy_all
Booking.destroy_all
Bag.destroy_all
User.destroy_all

user = User.create(email: "lolo@lolo.com", password: "123456")

file = URI.open("https://images.selfridges.com/is/image/selfridges/R03713350_M?$PDP_M_ZOOM$")
bag = Bag.new(brand: "jacquemus", category: "small", price: "30")
bag.user = user
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
bag.save
review = Review.new(comment: "Amazing bag, really good quality, all my friends were jealous, you should all rent bags here the service is A-M-A-Z-I-N-G !!", rating: 5)
review.bag = bag
review.user = user
review.save

file = URI.open("https://assets.hermes.com/is/image/hermesedito/P_11_inspiration_BIRKIN%203%20EN%201")
bag = Bag.new(brand: "Hermes", category: "medium", price: "160")
bag.user = user
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
bag.save
review = Review.new(comment: "Not good, the bag was dirty", rating: 2)
review.bag = bag
review.user = user
review.save

file = URI.open("https://twicpics.celine.com/product-prd/images/large/189243DRU.38NO_1_SPR19_130266.jpg")
bag = Bag.new(brand: "Céline", category: "Cross-Body", price: "30")
bag.user = user
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
bag.save
review = Review.new(comment: "good", rating: 4)
review.bag = bag
review.user = user
review.save

file = URI.open("https://cdn.sarenza.cloud/_img/productsv4/0000269185/0000269185_492536_09_504x690.jpg?202101291745&v=20180830155342")
bag = Bag.new(brand: "Vanessa Bruno", category: "Cabas", price: "330")
bag.user = user
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
bag.save

file = URI.open("https://cdn.sarenza.cloud/_img/productsv4/0000268874/0000268874_518731_09_504x690.jpg?202108231046&v=20180830155342")
bag = Bag.new(brand: "Guess", category: "purse", price: "90")
bag.user = user
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
bag.save

file = URI.open("https://www.goyard.com/media/catalog/product/cache/ed2d5ffe41ead7b3b3a1063933727a23/S/A/SAC_ARTOIS_MM_d3b8.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover")
bag = Bag.new(brand: "Goyard", category: "Medium", price: "130")
bag.user = user
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
bag.save

file = URI.open("https://cdn.sarenza.cloud/_img/productsv4/0000314552/0000314552_571843_09_504x690.jpg?202207261648&v=20180830155342")
bag = Bag.new(brand: "Zadig & Voltaire", category: "Hand bag", price: "75")
bag.user = user
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
bag.save

file = URI.open("https://cdn.sarenza.cloud/_img/productsv4/0000167601/0000167601_341588_09_504x690.jpg?201812211523&v=20180830155342")
bag = Bag.new(brand: "Zadig & Voltaire", category: "Hand Bag", price: "200")
bag.user = user
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
bag.save

file = URI.open("https://cdn.sarenza.cloud/_img/productsv4/0000324625/0000324625_585877_09_504x690.jpg?202209061644&v=20180830155342")
bag = Bag.new(brand: "Ralph Lauren", category: "Hand Bag", price: "200")
bag.user = user
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
bag.save

file = URI.open("https://cdn.sarenza.cloud/_img/productsv4/0000277127/0000277127_508261_09_504x690.jpg?202106170942&v=20180830155342")
bag = Bag.new(brand: "Michael Kors", category: "Wallet", price: "200")
bag.user = user
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
bag.save

file = URI.open("https://www.jacquemus.com/dw/image/v2/BJFJ_PRD/on/demandware.static/-/Sites-master-jacquemus/default/dwae7148bb/22H213BA005-3066-850_1_main.jpg?sw=475&sh=633&q=100")
bag = Bag.new(brand: "Jacquemus", category: "Chiquito", price: "90")
bag.user = user
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
bag.save

file = URI.open("https://www.chanel.com/images//t_one///e_brightness:-3/q_auto:good,f_auto,fl_lossy,dpr_1.2/w_1920/large-classic-handbag-black-grained-calfskin-gold-tone-metal-grained-calfskin-gold-tone-metal-packshot-other-a58600y01864c3906-8855285235742.jpg")
bag = Bag.new(brand: "Chanel", category: "Big", price: "190")
bag.user = user
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
bag.save

file = URI.open("https://img01.ztat.net/article/spp-media-p1/3cfc8f58cf384f9b8b3dce1705ea0736/43b4663ed77e40b482579bb89f819ff3.jpg?imwidth=1800&filter=packshot")
bag = Bag.new(brand: "Maje", category: "Medium", price: "30")
bag.user = user
bag.photo.attach(io: file, filename: "bag.jpg", content_type: "image/jpg")
bag.save
