# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  User.create(email: "#{i}@#{i}", password: "111111", name: Faker::Name.unique.name)
end

40.times do
  Book.create(name: Faker::Book.unique.title)
end

40.times do
  Movie.create(name: Faker::Games::LeagueOfLegends.unique.champion)
end