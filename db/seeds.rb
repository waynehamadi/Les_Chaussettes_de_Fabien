# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Sock.destroy_all
User.destroy_all
Booking.destroy_all
Review.destroy_all

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


## BOOKINGS & REVIEWS

booking1 = Booking.new()
booking1.sock_id = sock1.id
booking1.user_id = 1
booking1.start_at = "01/06/2019"
booking1.end_at = "06/06/2019"
booking1.save
review1 = Review.new(rating: 3, content: "Very smelly, maybe too much...?!")
review1.booking_id = booking1.id
review1.save

booking2 = Booking.new()
booking2.sock_id = sock2.id
booking2.user_id = 1
booking2.start_at = "01/06/2019"
booking2.end_at = "06/06/2019"
booking2.save
review2 = Review.new(rating: 1, content: "NOT SMELLY ENOUGH!")
review2.booking_id = booking2.id
review2.save

booking3 = Booking.new()
booking3.sock_id = sock3.id
booking3.user_id = 1
booking3.start_at = "01/06/2019"
booking3.end_at = "06/06/2019"
booking3.save
review3 = Review.new(rating: 1, content: "NOT SMELLY ENOUGH!")
review3.booking_id = booking3.id
review3.save

booking4 = Booking.new()
booking4.sock_id = sock4.id
booking4.user_id = 1
booking4.start_at = "01/06/2019"
booking4.end_at = "06/06/2019"
booking4.save
review4 = Review.new(rating: 1, content: "NOT SMELLY ENOUGH!")
review4.booking_id = booking4.id
review4.save

booking5 = Booking.new()
booking5.sock_id = sock5.id
booking5.user_id = 1
booking5.start_at = "01/06/2019"
booking5.end_at = "06/06/2019"
booking5.save
review5 = Review.new(rating: 1, content: "NOT SMELLY ENOUGH!")
review5.booking_id = booking5.id
review5.save

booking6 = Booking.new()
booking6.sock_id = sock6.id
booking6.user_id = 1
booking6.start_at = "01/06/2019"
booking6.end_at = "06/06/2019"
booking6.save
review6 = Review.new(rating: 5, content: "Loved it..... JUST THE RIGHT TEXTURE (and smell...)")
review6.booking_id = booking6.id
review6.save

booking7 = Booking.new()
booking7.sock_id = sock7.id
booking7.user_id = 1
booking7.start_at = "01/06/2019"
booking7.end_at = "06/06/2019"
booking7.save
review7 = Review.new(rating: 5, content: "Loved it..... JUST THE RIGHT TEXTURE (and smell...)")
review7.booking_id = booking7.id
review7.save
