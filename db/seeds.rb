# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'rubygems'
require 'faker'

# Create test admin
admin = User.create!(
  email: 'joshuazap+nimadmin@gmail.com',
  password: 'mypassword'
)
admin.skip_confirmation!
admin.save!

# Create fake data for users
5.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end
users = User.all
  
# Create fake data for items
25.times do
  Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence
  )
end
items = Item.all

puts "#{User.count} users created"
puts "#{Item.count} items created"