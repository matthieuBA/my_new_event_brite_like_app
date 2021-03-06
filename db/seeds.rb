# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all
Attendance.destroy_all


require "faker"

# user = User.create!(first_name: "anonymous", last_name: "anonymous", description: Faker::DcComics.title, email: Faker::Internet.email, age: rand(18..99), city_id: City.all.sample.id, password: "blank")

10.times do |i|
  puts "create user #{i}"
  
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user = User.create!(first_name: first_name, last_name: last_name, description: Faker::DcComics.title, email: first_name+"."+last_name+"@yopmail.com",password:first_name+"."+last_name )
  puts "event #{i} created"
  puts "#{i} errors"
  event = Event.create!(start_date:Time.now+(rand(1..9999)*3600),duration:rand(1..10)*5,title:Faker::DcComics.title,description:Faker::ChuckNorris.fact,price:rand(1..100),location:Faker::Address.city,user_id:User.all.sample.id)
  puts event.errors
end

