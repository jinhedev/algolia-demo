# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1000.times do
  Champion.create(
    name: Faker::LeagueOfLegends.champion,
    location: Faker::LeagueOfLegends.location,
    quote: Faker::LeagueOfLegends.quote,
    summoner_spell: Faker::LeagueOfLegends.summoner_spell,
    masteries: Faker::LeagueOfLegends.masteries,
  )
end

100.times do
  User.create(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    mac_address: Faker::Internet.mac_address,
    password: Faker::Internet.password
  )
end
