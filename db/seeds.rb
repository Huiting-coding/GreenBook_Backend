# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Request.destroy_all
Item.destroy_all
User.destroy_all



puts "destroy all data"

user_first = User.create!(
  nickname:'Huiting', description:"hello GreenBook", email:'hihihi@gmail.com', password: "123erfg"

)
puts "seeding users"

item_first = Item.create!(
  name: 'lamp', category:'household', description: "Nostalgic", user: user_first, location: "China"
)
puts "seeding items"

user_second = User.create!(
  nickname:'Anthony', description:"hello GreenBook", email:'hihihi2@gmail.com', password: "123erfgg"
)
puts "seeding users"

item_second = Item.create!(
  name: 'Book2', category:'book', description: "campus", user: user_second, location: "Shanghai"
)
puts "seeding items"

request1 = Request.create!(
  user: user_second, item: item_first
)

request2 = Request.create!(
  user: user_first, item: item_second
)
puts "seeding requests"
