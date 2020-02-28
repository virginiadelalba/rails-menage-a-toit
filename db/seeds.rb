# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Booking.destroy_all
Terrace.destroy_all
User.destroy_all



puts "Creating users"
user1 = User.new(email: 'firstemail@gmail.com', password: '12345678')
user1.save
user2 = User.create(email: 'secondemail@gmail.com', password: '12345678')
user3 = User.create(email: 'thirdemail@gmail.com', password: '12345678')
user4 = User.create(email: 'fourthemail@gmail.com', password: '12345678')
user5 = User.create(email: '5email@gmail.com', password: '12345678')
user6 = User.create(email: '6email@gmail.com', password: '12345678')
user7 = User.create(email: '7email@gmail.com', password: '12345678')
user8 = User.create(email: '8email@gmail.com', password: '12345678')
user9 = User.create(email: '9email@gmail.com', password: '12345678')
user10 = User.create(email: '10email@gmail.com', password: '12345678')
user11 = User.create(email: '11email@gmail.com', password: '12345678')

# puts "Creating terraces"
# terrace1 = Terrace.create(user: user1, title: 'Sunny Rooftop in Madrid', description: 'Enjoy the best of Madrid in our terrace.', capacity: 20, address: 'Calle Juan de Mariana, 15, 5° floor - Madrid', price: 800)
# terrace2 = Terrace.create(user: user2, title: 'Sunny Rooftop in São Paulo', description: 'Enjoy the best of São Paulo in our terrace.', capacity: 15, address: 'Rua Carlos Weber, 520, 12° floor - São Paulo', price: 500)
# terrace3 = Terrace.create(user: user3, title: 'Sunny Rooftop in Panama', description: 'Enjoy the best of Panama in our terrace.', capacity: 40, address: 'Calle de Panama, 420, 8° floor - Panama', price: 1000)
# terrace4 = Terrace.create(user: user4, title: 'Sunny Rooftop in Florida', description: 'Enjoy the best of Florida in our terrace.', capacity: 50, address: 'Main Street, 42, 4° floor - Florida', price: 1500)

puts "All users created, I hope!"
file1 = URI.open("https://i.imgur.com/zRjndK2.jpg")
file2 = URI.open("https://i.imgur.com/6AHgHKK.jpg")
file3 = URI.open("https://i.imgur.com/LuKRhwF.jpg")
t1 = Terrace.new(title: "The Ultimate Empire Terrace", description: "It doesn't get more Manhattan than this", capacity: 350, address: "11 Madison Avenue, New York", price: 1200, available: true, user: User.last)
t1.photos.attach(io: file1, filename: "img1", content_type: "image/jpg")
t1.photos.attach(io: file2, filename: "img2", content_type: "image/jpg")
t1.photos.attach(io: file3, filename: "img3", content_type: "image/jpg")
t1.save!

file4 = URI.open("https://i.imgur.com/kBKNh7I.jpg")
file5 = URI.open("https://i.imgur.com/efDAOFF.jpg")
file6 = URI.open("https://i.imgur.com/vxkfo7v.jpg")
t2 = Terrace.new(title: "A Terrace in a Boat", description: "Cruise around the city in a terrace that floats", capacity: 80, address: "207 12th Ave, New York", price: 2000, available: true, user: User.last)
t2.photos.attach(io: file4, filename: "img4", content_type: "image/jpg")
t2.photos.attach(io: file5, filename: "img5", content_type: "image/jpg")
t2.photos.attach(io: file6, filename: "img6", content_type: "image/jpg")
t2.save!

file7 = URI.open("https://i.pinimg.com/originals/0f/ef/ee/0fefeeb05d92c1a1c4fdad407209828c.jpg")
file8 = URI.open("https://odis.homeaway.com/odis/listing/8bc7dffc-dd85-4218-9107-200abc3210b6.c10.jpg")
file9 = URI.open("https://static.barcelona-home.com/960x/galleries/869/pictures/p18plnsq00a8t1tlvbf6jq5d56e.jpg")
t3 = Terrace.new(title: "Hidden garden in the Village", description: "Come discover a magical oasis in the heart of the city", capacity: 50, address: "15 Thompson St, New York,", price: 2000, available: true, user: User.last)
t3.photos.attach(io: file7, filename: "img7", content_type: "image/jpg")
t3.photos.attach(io: file8, filename: "img8", content_type: "image/jpg")
t3.photos.attach(io: file9, filename: "img9", content_type: "image/jpg")
t3.save!

file10 = URI.open("https://i.imgur.com/yn0ysLS.jpg")
file11 = URI.open("https://i.imgur.com/rUJB9H1.jpg")
file12 = URI.open("https://i.imgur.com/KIIDUoL.jpg")
t4 = Terrace.new(title: "THE Madrid rooftop", description: "Madrid skyline at its best. Come enjoy the sunset.", capacity: 120, address: "Calle Gran Vía, 21, Madrid", price: 550, available: true, user: User.last)
t4.photos.attach(io: file10, filename: "img10", content_type: "image/jpg")
t4.photos.attach(io: file11, filename: "img11", content_type: "image/jpg")
t4.photos.attach(io: file12, filename: "img12", content_type: "image/jpg")
t4.save!

file13 = URI.open("https://i.imgur.com/1U2NAoQ.jpg")
file14 = URI.open("https://i.imgur.com/rJcPQvS.jpg")
file15 = URI.open("https://i.imgur.com/e5i9PYJ.jpg")
t5 = Terrace.new(title: "The most hip terrace in Madrid", description: "Feel the hood and the chill vibes", capacity: 80, address: "Calle de la Montera, 37, Madrid", price: 700, available: true, user: User.last)
t5.photos.attach(io: file13, filename: "img13", content_type: "image/jpg")
t5.photos.attach(io: file14, filename: "img14", content_type: "image/jpg")
t5.photos.attach(io: file15, filename: "img15", content_type: "image/jpg")
t5.save!

file16 = URI.open("https://i.imgur.com/ZNxPnDJ.jpg")
file17 = URI.open("https://i.imgur.com/MVCMZrG.jpg")
file18 = URI.open("https://i.imgur.com/pJggvFh.jpg")
t6 = Terrace.new(title: "The most hip terrace in Madrid", description: "Feel the hood and the chill vibes", capacity: 150, address: "Calle de Santa Isabel, 52, Madrid", price: 900, available: true, user: User.last)
t6.photos.attach(io: file16, filename: "img16", content_type: "image/jpg")
t6.photos.attach(io: file17, filename: "img17", content_type: "image/jpg")
t6.photos.attach(io: file18, filename: "img18", content_type: "image/jpg")
t6.save!



