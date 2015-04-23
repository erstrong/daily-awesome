require 'faker'

# Create users
5.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10),
    role: "member"
  )
  user.save!
end
users = User.all

categories=["Writing","Picture","Video","Audio"]

15.times do
  topic = Topic.new(
    title: Faker::Lorem.sentence,
    prompt: Faker::Lorem.paragraph,
    category: categories.sample
  )
  topic.save!
end

# Create default users
# Create default users
admin = User.new(
  name: 'Admin User',
  email: 'admin@example.com',
  password: 'helloworld',
  role: 'admin'
)
admin.save!

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"


