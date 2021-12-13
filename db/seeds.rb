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

put "destroy all data"

users = User.create(
  [
    {nickname:'Huiting', description:"hello GreenBook", email:'hihihi@gmail.com'},
    {nickname:'Anthony',description:"hello HappyHour",email:'hihihi3@gmail.com'},
    {nickname:'Heiley',description:"hello Huiting",email:'hihihi2@gmail.com'}
  ]
)
puts "seeding users"

items = Item.create(
  [
    {name: 'lamp', category:'household', user_id:'1'},
    {name: 'plate', category:'household', user_id:'2'},
    {name: 'plate', category:'household', user_id:'2'}
  ]
)
puts "seeding items"

requests = Request.create(
  [
    {user_id:'1', item_id:'2'},
    {user_id:'2', item_id:'1'}
  ]
)

puts "seeding requests"
