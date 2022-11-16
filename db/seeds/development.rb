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

puts 'Seeding development database...'
jane = User.first_or_create!(email: 'jane@seed.com',
                            password: 'password',
                            password_confirmation: 'password',
                            first_name: 'Jane',
                            last_name: 'Doe',
                            role: User.roles[:admin])
john = User.first_or_create!(email: 'john@seed.com',
                            password: 'password',
                            password_confirmation: 'password',
                            first_name: 'John',
                            last_name: 'Doe')
Address.first_or_create!(street: '123 Main St',
                        city: 'Anytown',
                        state: 'CA',
                        zip: '12345',
                        country: 'USA',
                        user: jane)           
Address.first_or_create!(street: '123 Main St',
                        city: 'Anytown',
                        state: 'CA',
                        zip: '12345',
                        country: 'USA',
                        user: john)
elapsed = Benchmark.measure do
    posts = []
    10.times do |x|
        puts "Creating post #{x}"
        post = Post.create(title: "Title #{x}",
                        body: "Body #{x} Words go here Idx",
                        user: jane)
                        5.times do |y|
                            puts "Creating comment #{y} for post #{x}"
                            post.comments.build(body: "Comment #{y}",
                                user: john)
                            end
                            posts.push(post)
                        end
    #Post.import(posts, recursive: true)
end

puts "Seeded development DB in #{elapsed.real} seconds"