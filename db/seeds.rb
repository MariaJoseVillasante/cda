# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# User.create(email: 'seed@user1.com', name: 'Seed1', password: 'password', password_confirmation: 'password')
# User.create(email: 'seed@user2.com', name: 'Seed2', password: 'password', password_confirmation: 'password')
# 1.times do |x|
#     Post.create(title: "Title #{x}", body: "Body #{x} æords", user_id: User.first.id)
#  end

User.create(email: 'maria@seed.com',
    password: 'password',
    password_confirmation: 'password',
    name: 'Maria',
    role: User.roles[:admin])
User.create(email: 'Juan@seed.com',
    password: 'password',
    password_confirmation: 'password',
    name: 'Juan')

10.times do |x|
    post = Post.create(title: "Title #{x}",
                    body: "Body #{x} Words go here Idx",
                    user_id: User.first.id)

    5.times do |y|
        Comment.create(body: "Comment #{y}",
                    user_id: User.second.id,
                    post_id: post.id)
        end
end