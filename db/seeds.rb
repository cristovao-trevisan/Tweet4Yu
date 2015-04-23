# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create( 
  :email => 'test@test.com',
  :name => 'User 1',
  :password => '12345678', 
  :password_confirmation => '12345678', 
)

user2 = User.create( 
  :email => 'test2@test.com',
  :name => 'User 2',
  :password => '12345678', 
  :password_confirmation => '12345678', 
)

user3 = User.create(
  :email => 'test3@test.com',
  :name => 'User 3',
  :password => '12345678',
  :password_confirmation => '12345678',
)

user4 = User.create(
  :email => 'test4@test.com',
  :name => 'User 4',
  :password => '12345678',
  :password_confirmation => '12345678',
)

user5 = User.create(
  :email => 'test5@test.com',
  :name => 'User 5',
  :password => '12345678',
  :password_confirmation => '12345678',
)

user6 = User.create(
  :email => 'test6@test.com',
  :name => 'User 6',
  :password => '12345678',
  :password_confirmation => '12345678',
)

Follow.create(:user_id => 1, :friend_id => 2)
Follow.create(:user_id => 1, :friend_id => 3)
Follow.create(:user_id => 1, :friend_id => 4)
Follow.create(:user_id => 1, :friend_id => 5)
Follow.create(:user_id => 1, :friend_id => 6)

user2.posts.create(text: "I am the user 2")
user3.posts.create(text: "I am the user 3")
user4.posts.create(text: "I am the user 4")
user5.posts.create(text: "I am the user 5")
user6.posts.create(text: "I am the user 6")
