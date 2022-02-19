require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Workflow.destroy_all
User.destroy_all

user_1 = User.create!(first_name:"Dave", last_name:"Sellick", email:"dave@pushflo.com", password:"1234567")
puts "created user"
user_2 = User.create!(first_name:"Kyri", last_name:"Panayi", email:"kyri@pushflo.com", password:"1234567")
puts "created user"
user_3 = User.create!(first_name:"Nelson", last_name:"Yepes", email:"nelson@pushflo.com", password:"1234567")
puts "created user"
