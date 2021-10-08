# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Debate.destroy_all

testuser1 = User.create(username: "testuser1", email: 'email1@email.com', password: "password1", password_confirmation: "password1")
testuser2 = User.create(username: "testuser2", email: 'email2@email.com', password: "password2", password_confirmation: "password2")
testuser3 = User.create(username: "testuser3", email: 'email3@email.com', password: "password3", password_confirmation: "password3")

testuser1.debates.create(title: "Title 1", body: "Body 1", user_id: testuser1.id)
testuser1.debates.create(title: "Title 2", body: "Body 2", user_id: testuser1.id)
testuser1.debates.create(title: "Title 3", body: "Body 3", user_id: testuser1.id)

testuser2.debates.create(title: "Title 11", body: "Body 11", user_id: testuser2.id)
testuser2.debates.create(title: "Title 12", body: "Body 12", user_id: testuser2.id)
testuser2.debates.create(title: "Title 13", body: "Body 13", user_id: testuser2.id)

testuser3.debates.create(title: "Title 21", body: "Body 21", user_id: testuser3.id)
testuser3.debates.create(title: "Title 22", body: "Body 22", user_id: testuser3.id)
testuser3.debates.create(title: "Title 23", body: "Body 23", user_id: testuser3.id)
# User.destroy_all
# Team.destroy_all

# 5.times do
#   User.create(name:Faker::)
# end