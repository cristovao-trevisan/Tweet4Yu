# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create( 
  :email => 'teste@teste.com',
  :name => 'teste',
  :password => '12345678', 
  :password_confirmation => '12345678', 
)

user2 = User.create( 
  :email => 'teste2@teste.com',
  :name => 'teste2',
  :password => '12345678', 
  :password_confirmation => '12345678', 
)

Follow.create(:user_id => 1, :friend_id => 2)
