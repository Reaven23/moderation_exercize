# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

puts 'Goodbye everybody'
User.destroy_all
Post.destroy_all
Comment.destroy_all
puts 'I had to go... done'

u1 = User.create!(email: 'adrien@gmail.com',
                     password: '123456',
                     nickname: 'Ad')
u2 = User.create!(email: 'paul@gmail.com',
                     password: '123456',
                     nickname: 'Polo')

users = [u1, u2]

10.times do
  post = Post.new(
    url: Faker::Internet.url,
    title: Faker::Name.name,
    content: Faker::Lorem.characters(number: 950),
    user: users.sample
  )
  post.save!
  5.times do
    comment = Comment.new(
      content: Faker::Lorem.characters(number: 50),
      user: users.sample,
      post:
    )
    comment.save!
  end
end

puts "Mamaaaa - finished"
