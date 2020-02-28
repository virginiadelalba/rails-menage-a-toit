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
file1 = URI.open("https://i.imgur.com/vL5HiEY.jpg")
file2 = URI.open("https://i.imgur.com/QFojkFK.jpg")
file3 = URI.open("https://i.imgur.com/FMElGxj.jpg")
t1 = Terrace.new(title: "The Ultimate Empire Terrace", description: "It doesn't get more Manhattan than this", capacity: 350, address: "11 Madison Avenue, New York", price: 1200, available: true, user: User.last)
t1.photos.attach(io: file1, filename: "img1", content_type: "image/jpg")
t1.photos.attach(io: file2, filename: "img2", content_type: "image/jpg")
t1.photos.attach(io: file3, filename: "img3", content_type: "image/jpg")
t1.save!
