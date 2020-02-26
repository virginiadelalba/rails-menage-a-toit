# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy Terraces"
Terrace.destroy_all

puts "Destroy Users"
User.destroy_all


# puts "Creating users"
# user1 = User.new(email: 'firstemail@gmail.com', password: '12345678')
# user1.save
# user2 = User.create(email: 'secondemail@gmail.com', password: '12345678')
# user3 = User.create(email: 'thirdemail@gmail.com', password: '12345678')
# user4 = User.create(email: 'fourthemail@gmail.com', password: '12345678')

# puts "Creating terraces"
# terrace1 = Terrace.create(user: user1, title: 'Sunny Rooftop in Madrid', description: 'Enjoy the best of Madrid in our terrace.', capacity: 20, address: 'Calle Juan de Mariana, 15, 5° floor - Madrid', price: 800)
# terrace2 = Terrace.create(user: user2, title: 'Sunny Rooftop in São Paulo', description: 'Enjoy the best of São Paulo in our terrace.', capacity: 15, address: 'Rua Carlos Weber, 520, 12° floor - São Paulo', price: 500)
# terrace3 = Terrace.create(user: user3, title: 'Sunny Rooftop in Panama', description: 'Enjoy the best of Panama in our terrace.', capacity: 40, address: 'Calle de Panama, 420, 8° floor - Panama', price: 1000)
# terrace4 = Terrace.create(user: user4, title: 'Sunny Rooftop in Florida', description: 'Enjoy the best of Florida in our terrace.', capacity: 50, address: 'Main Street, 42, 4° floor - Florida', price: 1500)

puts "All deleted, I hope!"
