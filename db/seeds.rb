# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: "Jin", email: "jinhedev@gmail.com", password: "foobarbaz", mac_address: "00-14-22-01-23-45")

100.times do
  User.create(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    mac_address: Faker::Internet.mac_address,
    password: Faker::Internet.password
  )
end

users = User.order(:created_at).take(6)
50.times do
    users.each { |user|
      user.champions.create!(
        name: Faker::LeagueOfLegends.champion,
        location: Faker::LeagueOfLegends.location,
        quote: Faker::LeagueOfLegends.quote,
        summoner_spell: Faker::LeagueOfLegends.summoner_spell,
        masteries: Faker::LeagueOfLegends.masteries
      )
    }
end
