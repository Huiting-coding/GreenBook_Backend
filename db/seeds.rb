# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all
Request.destroy_all

puts "destroy all data"

users = User.create!(
  [
    {nickname:'Huiting', description:"hello GreenBook", email:'hihihi@gmail.com', password: "123erfg"},
    {nickname:'Anthony',description:"hello HappyHour",email:'hihihi3@gmail.com', password: "123erfg"},
    {nickname:'Heiley',description:"hello Huiting",email:'hihihi2@gmail.com',password: "123erfg"}
  ]
)
puts "seeding users"

items = Item.create!(
  [
    {name: 'lamp', category:'household', category_id:"1", user_id:'1', description: "Nostalgic", user: users[0]},
    {name: 'plate', category:'household', category_id:"1",user_id:'1', description: "Nostalgic", user: users[0]},
    {name: 'plate', category:'household', category_id:"1", user_id:'1', description: "Nostalgic", user: users[0]}
  ]
)
puts "seeding items"

requests = Request.create!(
  [
    {user_id:'1', item_id:'2'},
    {user_id:'2', item_id:'1'}
  ]
)

puts "seeding requests"
