require 'faker'

# Create users
5.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.save!
end
users = User.all

categories=["Writing","Picture","Video","Audio"]

15.times do
  topic = Topic.new(
    title: Faker::Lorem.sentence,
    prompt: Faker::Lorem.paragraph,
    category: categories.sample,
    display_date: rand(10.minutes .. 15.days).ago
  )
  topic.save!
end

5.times do 
  topic = Topic.new(
    title: Faker::Lorem.sentence,
    prompt: Faker::Lorem.paragraph,
    category: categories.sample,
    display_date: Date.today+rand(6)
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

member = User.new(
  name: 'Member User',
  email: 'member@example.com',
  password: 'helloworld',
)
member.save!

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"


