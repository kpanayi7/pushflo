require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Favourite.destroy_all
Workflow.destroy_all
User.destroy_all

User.create!(first_name:"Dave", last_name:"Sellick", user_name:"dave", email:"dave@pushflo.com", password:"1234567", admin: true)
puts "created user"


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
    program: Faker::ProgrammingLanguage.name,
    loom_url:"https://www.loom.com/share/c71943387a5748999ad526bb5b7d139d",
    user_id: rand(1..10)
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


5.times do
  Favourite.create!(
    user_id: 1,
    workflow_id: rand(1..10)
  )
  puts "created favourite"
end


Workflow.create!(
    title: "Automating Excel Borders",
    description: "Smashing out all the borders and that",
    walkthrough: "This is how you bosh borders on the fly",
    program: "Excel",
    loom_url:"https://www.loom.com/share/c71943387a5748999ad526bb5b7d139d",
    user_id: 1
)
  puts "created workflow"

Workflow.create!(
    title: "Top Notion Shortcuts",
    description: "Smashing out all the Notion shortcuts and that",
    walkthrough: "This is how you bosh Notion shortcuts on the fly",
    program: "Notion",
    loom_url:"https://www.loom.com/share/c71943387a5748999ad526bb5b7d139d",
    user_id: 1
)
  puts "created workflow"

Workflow.create!(
    title: "Top Gmail Textstrings",
    description: "Smashing out all the Gmail textstings and that",
    walkthrough: "This is how you bosh Gmail textstings on the fly",
    program: "Gmail",
    loom_url:"https://www.loom.com/share/c71943387a5748999ad526bb5b7d139d",
    user_id: 1
)
  puts "created workflow"
