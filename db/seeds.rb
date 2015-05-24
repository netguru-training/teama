# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
%w(Descent Dixit SmallWorld Discworld).each do |b|
  BoardGame.create(name: b, description: Faker::Lorem.sentence)
end

4.times do
  u = User.create(email: Faker::Internet::email, password: 'password')
  u.reviews.build(content: Faker::Lorem.sentence, board_game: BoardGame.all.sample)
  u.comments.build(content: Faker::Lorem.sentence, review: Review.all.sample)
  u.friends.build(friend_id: User.all.sample, accepted: true)
  u.save
end

user = User.first
Friend.create(user: user, friend: User.last)

user = User.last
Friend.create(user: user, friend: User.first)

