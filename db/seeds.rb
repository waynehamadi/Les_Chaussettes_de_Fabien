# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(email: "merwanehamadi2@gmail.com", password:"toto75")
user1.save
sock1 = Sock.new(title:"Amazing socks",
  description:"These socks smell like heaven",
  category: "adult",
  price: 2,
  size: "42-44",
  color: "red"  )
sock1.user_id = user1.id
sock1.save

booking = Booking.new()
booking.sock_id = 1
booking.user_id = 1
booking.save
review = Review.new(rating: 3, content: "bof")
review.booking_id = 1
review.save
