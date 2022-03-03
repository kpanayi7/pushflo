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


  Workflow.create!(
    title: "Loom Shortcuts",
    description: "Loom Video Shortcuts Pack",
    walkthrough: "This pack will take you through some of the best shortcuts to speed up the creation of videos with Loom. From automating record on/off to turning on your lights and throwing in some confetti",
    program: "Loom",
    loom_url:"https://www.loom.com/share/6cceaf0c4d884f8a9a1b1995c1444efb",
    user_id: 1
  )
  puts "created workflow"

  Workflow.create!(
    title: "Headings in Outlook",
    description: "Bash out the next level headings on the fly",
    walkthrough: "Getting your headings out for the lads - this will supercharge your headings in Outlook",
    program: "Outlook",
    loom_url:"https://www.loom.com/share/3faebe6e53fc47cc8a2822101d0bb7c8",
    user_id: 1
  )
  puts "created workflow"


Workflow.create!(
    title: "Excel Borders",
    description: "Smashing out all the borders and that",
    walkthrough: "This is how you bosh borders on the fly",
    program: "Excel",
    loom_url:"https://www.loom.com/share/eaf6d9b477bc4c478493bcf484f3a191",
    user_id: 1
)
  puts "created workflow"

Workflow.create!(
    title: "Top Notion Shortcuts",
    description: "Smashing out all the Notion shortcuts and that",
    walkthrough: "This is how you bosh Notion shortcuts on the fly",
    program: "Notion",
    loom_url:"https://www.loom.com/share/afa9ffb550e24441867577d5fa033c52",
    user_id: 1
)
  puts "created workflow"

Workflow.create!(
    title: "Top Gmail Textstrings",
    description: "Smashing out all the Gmail textstings and that",
    walkthrough: "This is how you bosh Gmail textstings on the fly",
    program: "Gmail",
    loom_url:"https://www.loom.com/share/fedc02d5b2214ee0b20c34aa5f3eace8",
    user_id: 1
)
  puts "created workflow"




10.times do
  Favourite.create!(
    user_id: rand(1..10),
    workflow_id: rand(1..5)
  )
  puts "created favourite"
end



  Favourite.create!(
    user_id: 1,
    workflow_id:2
  )
  puts "created favourite"

   Favourite.create!(
    user_id: 1,
    workflow_id:3
  )
  puts "created favourite"
