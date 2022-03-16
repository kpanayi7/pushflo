require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# #program images:
# Dave = URI.open("https://res.cloudinary.com/dza6mn30y/image/upload/v1645874416/Pushflo/Avatars/Copy_of_Dave_odrthq.png")
# Kyri = URI.open('https://res.cloudinary.com/dza6mn30y/image/upload/v1646777172/Pushflo/Avatars/Copy_of_Kyri_ygvzqc.jpg')
# Nelson = URI.open('https://res.cloudinary.com/dza6mn30y/image/upload/v1645877205/Pushflo/Images/icons/Icons_Feb21_15_trfkcg.png')




Favourite.destroy_all
Workflow.destroy_all
User.destroy_all

dave = User.create!(first_name:"Dave", last_name:"Sellick", user_name:"dave", email:"dave@pushflo.com", password:"1234567", admin: true)
puts "created user"

kyri = User.create!(first_name:"Kyri", last_name:"Panayi", user_name:"kp", email:"kyri@pushflo.com", password:"1234567", admin: true)
puts "created user"

nelson = User.create!(first_name:"Nelson", last_name:"Yepes", user_name:"nels", email:"nelson@pushflo.com", password:"1234567", admin: true)
puts "created user"

roel = User.create!(first_name:"Roel", last_name:"De Jong", user_name:"rozza", email:"roel@pushflo.com", password:"1234567", admin: false)
puts "created user"


# #program images:
# Notion = URI.open("https://res.cloudinary.com/dza6mn30y/image/upload/v1645988609/Pushflo/Images/icons/Notion_umximk.png")
# Excel = URI.open('https://res.cloudinary.com/dza6mn30y/image/upload/v1645988609/Pushflo/Images/icons/Excel_1_ieek2g.png')
# Outlook = URI.open('https://res.cloudinary.com/dza6mn30y/image/upload/v1645877205/Pushflo/Images/icons/Icons_Feb21_15_trfkcg.png')



# #programs:
# notion = Program.create!(name: "Notion")
# notion.photo.attach(io: Notion,filename: "notion.png", content_type: 'image/jpg')
# notion.save!
#   puts "created program"

# excel = Program.create!(name: "Excel")
# excel.photo.attach(io: Excel, filename: "excel.png", content_type: 'image/jpg')
# excel.save!

#   puts "created program"

# outlook = Program.create!(name: "Outlook")
# outlook.photo.attach(io: Outlook, filename: "outlook.png", content_type: 'image/jpg')
# outlook.save!
#   puts "created program"


# loom = Program.create!(name: "Loom")
# loom.photo.attach(io: Loom, filename: "loom.png", content_type: 'image/jpg')
# loom.save!
# puts "created program"



# 10.times do
#   User.create!(
#     first_name: Faker::Name.name,
#     last_name: Faker::Name.name,
#     user_name: Faker::Name.name,
#     email: Faker::Internet.email,
#     password:"1234567"
#   )
#   puts "created user"
# end


 Workflow.create!(
    title: "Loom Shortcuts",
    description: "Loom Video Shortcuts Pack",
    walkthrough: "This pack will take you through some of the best shortcuts to speed up the creation of videos with Loom. From automating record on/off to turning on your lights and throwing in some confetti",
    program: "Loom",
    loom_url:"https://www.loom.com/share/6cceaf0c4d884f8a9a1b1995c1444efb",
    user: dave
  )
  puts "created workflow"

 Workflow.create!(
    title: "Headings in Outlook",
    description: "Bash out the next level headings on the fly",
    walkthrough: "Getting your headings out for the lads - this will supercharge your headings in Outlook",
    program: "Outlook",
    loom_url:"https://www.loom.com/share/3faebe6e53fc47cc8a2822101d0bb7c8",
    user: dave
  )
  puts "created workflow"


Workflow.create!(
    title: "Excel Borders",
    description: "Smashing out all the borders and that",
    walkthrough: "This is how you bosh borders on the fly",
    program: "Excel",
    loom_url:"https://www.loom.com/share/eaf6d9b477bc4c478493bcf484f3a191",
    user: dave
)
  puts "created workflow"



Workflow.create!(
    title: "Excel Borders",
    description: "Smashing out all the borders and that",
    walkthrough: "This is how you bosh borders on the fly",
    program: "Excel",
    loom_url:"https://www.loom.com/share/eaf6d9b477bc4c478493bcf484f3a191",
    user: kyri
)
  puts "created workflow"

  Workflow.create!(
    title: "Excel Borders",
    description: "Smashing out all the borders and that",
    walkthrough: "This is how you bosh borders on the fly",
    program: "Excel",
    loom_url:"https://www.loom.com/share/eaf6d9b477bc4c478493bcf484f3a191",
    user: kyri
)
  puts "created workflow"



Workflow.create!(
    title: "Top Notion Shortcuts",
    description: "Smashing out all the Notion shortcuts and that",
    walkthrough: "This is how you bosh Notion shortcuts on the fly",
    program: "Notion",
    loom_url:"https://www.loom.com/share/afa9ffb550e24441867577d5fa033c52",
    user: kyri
)
  puts "created workflow"



  Workflow.create!(
    title: "Top Notion Shortcuts",
    description: "Smashing out all the Notion shortcuts and that",
    walkthrough: "This is how you bosh Notion shortcuts on the fly",
    program: "Notion",
    loom_url:"https://www.loom.com/share/afa9ffb550e24441867577d5fa033c52",
    user: nelson
)
  puts "created workflow"


  Workflow.create!(
    title: "Top Notion Shortcuts",
    description: "Smashing out all the Notion shortcuts and that",
    walkthrough: "This is how you bosh Notion shortcuts on the fly",
    program: "Notion",
    loom_url:"https://www.loom.com/share/afa9ffb550e24441867577d5fa033c52",
    user: nelson
)
  puts "created workflow"


Workflow.create!(
    title: "Top Gmail Textstrings",
    description: "Smashing out all the Gmail textstings and that",
    walkthrough: "This is how you bosh Gmail textstings on the fly",
    program: "Gmail",
    loom_url:"https://www.loom.com/share/fedc02d5b2214ee0b20c34aa5f3eace8",
    user: roel
)
  puts "created workflow"




# 10.times do
#   Favourite.create!(
#     user_id: rand(1..10),
#     workflow_id: rand(1..5)
#   )
#   puts "created favourite"
# end



  Favourite.create!(
    user_id: 1,
    workflow_id: 1
  )
  puts "created favourite"

   Favourite.create!(
    user_id: 2,
    workflow_id: 2
  )
  puts "created favourite"
