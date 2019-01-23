# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
    username: "u1",
    password: "123",
    email: "u1@gmail.com",
    phone_number: 2325233232,
    address: '123 fake street',
    first_name: 'user1',
    last_name: 'user1',
  )
User.create(
    username: "u2",
    password: "123",
    email: "u2@gmail.com",
    phone_number: 2325233231,
    address: '123 fake street',
    first_name: 'u2',
    last_name: 'u2',
  )
destination = ['Salvation Army','New York City Rescure Mission', 'Coalition for the Homeless', 'Department of Homeless Services']

Donation.create(description: 'clothes', avatar: 'https://cdn.pixabay.com/photo/2016/04/19/13/39/store-1338629_960_720.jpg', status:"Delivered", destination: destination.sample)
Donation.create(description: 'food', avatar: 'https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/hires/2016/howcuttingdo.jpg', destination: destination.sample)
Donation.create(description: 'canned goods', avatar: 'http://www.youngandraw.com/wp-content/uploads/4-Reasons-to-Avoid-Canned-Foods-Save-time-and-Money-too.jpg', destination: destination.sample)

DonationList.create(donation_id: 1, user_id: 1)
DonationList.create(donation_id: 2, user_id: 1)
DonationList.create(donation_id: 3, user_id: 1)
