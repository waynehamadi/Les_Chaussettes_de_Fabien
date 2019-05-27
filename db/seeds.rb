# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Sock.destroy_all
User.destroy_all

## USERS

users = []
5.times do
  user = User.create(email: Faker::Internet.email, password: Faker::Lorem.characters(7))
  users << user
end


## SOCKS

url1 = "https://res.cloudinary.com/dqwubjw5x/image/upload/v1558961372/AMAZING_SPIDERMAN_dsax6h.jpg"
sock1 = Sock.new(title:"AMAZING SPIDERMAN",
  description:"Everyone's favourite arachnid, our Amazing Spiderman socks are guaranteed to get your spidey sense tingling. Officially licensed by Marvel and personally-approved by your friendly neighborhood webslinger.",
  category: "Adult",
  price: 19,
  size: "38-40",
  color: "red")
sock1.remote_photo_url = url1
sock1.user_id = users.sample.id
sock1.save

url2 = "https://res.cloudinary.com/dqwubjw5x/image/upload/v1558961372/MIAMI_SKYLINE_PRO_u87pue.jpg"
sock2 = Sock.new(title:"MIAMI SKYLINE PRO ",
  description:"Not many cities have the appeal of South Beach. Dedicated to the tropical splendor of Miami we give you Miami Skyline Pro.",
  category: "Adult",
  price: 17,
  size: "38-40",
  color: "purple")
sock2.remote_photo_url = url2
sock2.user_id = users.sample.id
sock2.save

url3 = "https://res.cloudinary.com/dqwubjw5x/image/upload/v1558961372/DESK_SCRIBBS_abiknt.jpg"
sock3 = Sock.new(title:"DESK SCRIBBS",
  description:"Everyone’s an artist on a blank piece of notebook paper. We’ve used those old high school doodlings as inspiration for Desk Scribbs, a tribute to the time when we all were potential artists in the making.",
  category: "Kids",
  price: 14,
  size: "38-40",
  color: "white")
sock3.remote_photo_url = url3
sock3.user_id = users.sample.id
sock3.save

url4 = "https://res.cloudinary.com/dqwubjw5x/image/upload/v1558961372/NORD_cle3vy.jpg"
sock4 = Sock.new(title:"NORD",
  description:"Polka dots aren't just for five-year-olds. Grown men also enjoy the fun look of those notorious spots from time to time and we are here to deliver with the Nord.",
  category: "Kids",
  price: 12,
  size: "38-40",
  color: "blue")
sock4.remote_photo_url = url4
sock4.user_id = users.sample.id
sock4.save

url5 = "https://res.cloudinary.com/dqwubjw5x/image/upload/v1558961811/LANDLORD_jpent9.jpg"
sock5 = Sock.new(title:"LANDLORD ",
  description:"What is cooler than great white ripping into the air at lightning speed on your sock? NOTHING. The Landlord features Y-Gore seams, self-adjusting wheel cuff, and reinforced toe and heel.",
  category: "Adult",
  price: 15,
  size: "38-40",
  color: "grey")
sock5.remote_photo_url = url5
sock5.user_id = users.sample.id
sock5.save

url6 = "https://res.cloudinary.com/dqwubjw5x/image/upload/v1558961811/DRIP_RAINBOW_qf1ljj.jpg"
sock6 = Sock.new(title:"DRIP RAINBOW ",
  description:"The season’s changing. Wake your style from hibernation with Drip Rainbow, a grandiose display of liquified color designed to revitalize the lackluster wardrobe. ",
  category: "Adult",
  price: 13,
  size: "38-40",
  color: "rainbow")
sock6.remote_photo_url = url6
sock6.user_id = users.sample.id
sock6.save

url7 = "https://res.cloudinary.com/dqwubjw5x/image/upload/v1558961811/SURFIN_GUADALUPE_zxczp1.jpg"
sock7 = Sock.new(title:"SURFIN GUADALUPE",
  description:"Hang ten with the Surfin' Guadalupe... because everyone loves a tasty wave. This is a fun one.",
  category: "Kid",
  price: 15,
  size: "32-38",
  color: "orange")
sock7.remote_photo_url = url7
sock7.user_id = users.sample.id
sock7.save


## BOOKINGS

booking = Booking.new()
booking.sock_id = 1
booking.user_id = 1
booking.start_at = "01/06/2019"
booking.end_at = "06/06/2019"
booking.save

## REVIEWS

review = Review.new(rating: 3, content: "bof")
review.booking_id = 1
review.save


# 5.times do
#   socks << Sock.new(title:"Amazing socks",
#   description:Faker::Lorem.sentence(10),
#   category: ["kid", "adult"].sample,
#   price: [2,3,4,5, 6,1].sample,
#   size: ["42-44", "40-42", "38-40", "44-46"].sample,
#   color: ["red", "blue", "yellow", "black"].sample)
# end

# urls = []
# urls << "https://static1.squarespace.com/static/558d8f8ee4b0e58af1aca873/55a95c71e4b0f765fc4497ac/5be5f765032be4400f2fed89/1541797756629/Background+copy+4.jpg"
# urls << "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxNQcbJ501SBsHmQMOtt1dE6a6udGQXKWmwKOnHY2EYmB16qkk6A"
# urls << "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm1nkd7lj0mdPB6cOKptnEAQjhMjOU-aibXwp6xjasnxWxs0vVWw"
# urls << "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNYzKFAXt-_meDhqVEyyD4-vMoubVjwLAKmrvGhrdaDGpE4LrX"
# urls << "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiW9JhjbsUGCkThkDu9KZOcjefOwr37-OHop34NscLGgtW1ya56g"

# socks.each do |sock|
#   sock.user_id = users.sample.id
# end

# socks.each_with_index do |sock, index|
#     sock.remote_photo_url = urls[index]
#     sock.save
# end
