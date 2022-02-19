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

10.times do
  User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    user_name: Faker::Name.name,
    email: Faker::Internet.email,
    password:"1234567"
  )
  puts "created user"
end

10.times do
  Workflow.create!(
    title: Faker::ProgrammingLanguage.name,
    description: Faker::Lorem.sentence,
    walkthrough: Faker::Lorem.paragraphs,
    program: Faker::ProgrammingLanguage.name
  )
  puts "created workflow"
end

10.times do
  Favourite.create!(
    user_id: rand(1..10),
    workflow_id: rand(1..10)
  )
  puts "created favourite"
end
