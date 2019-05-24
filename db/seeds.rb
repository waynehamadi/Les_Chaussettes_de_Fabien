# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = []
5.times do
  user = User.create(email: Faker::Internet.email, password: Faker::Lorem.characters(7))
  users << user
end
socks = []
5.times do
  socks << Sock.new(title:"Amazing socks",
  description:Faker::Lorem.sentence(10),
  category: ["kid", "adult"].sample,
  price: [2,3,4,5, 6,1].sample,
  size: ["42-44", "40-42", "38-40", "44-46"].sample,
  color: ["red", "blue", "yellow", "black"].sample)
end

socks.each do |sock|
  sock.user_id = users.sample.id
end
urls = []
urls << "https://static1.squarespace.com/static/558d8f8ee4b0e58af1aca873/55a95c71e4b0f765fc4497ac/5be5f765032be4400f2fed89/1541797756629/Background+copy+4.jpg"
urls << "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxNQcbJ501SBsHmQMOtt1dE6a6udGQXKWmwKOnHY2EYmB16qkk6A"
urls << "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm1nkd7lj0mdPB6cOKptnEAQjhMjOU-aibXwp6xjasnxWxs0vVWw"
urls << "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNYzKFAXt-_meDhqVEyyD4-vMoubVjwLAKmrvGhrdaDGpE4LrX"
urls << "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiW9JhjbsUGCkThkDu9KZOcjefOwr37-OHop34NscLGgtW1ya56g"


socks.each_with_index do |sock, index|
    sock.remote_photo_url = urls[index]
    sock.save
end

booking = Booking.new()
booking.sock_id = 1
booking.user_id = 1
booking.start_at = "01/06/2019"
booking.end_at = "06/06/2019"
booking.save
review = Review.new(rating: 3, content: "bof")
review.booking_id = 1

review.save
