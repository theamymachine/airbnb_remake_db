# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times{
  User.create!(name: Faker::FunnyName.name, tel_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, description: 
  Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
  }

10.times{
    City.create!(name: Faker::Address.city)
  }

50.times{
  Listing.create!(available_beds: rand(5), price: rand(50..200), description: Faker::Restaurant.description, has_wifi: Faker::Boolean.boolean(true_ratio: 0.2), welcome_message: Faker::ChuckNorris.fact, city: City.all.sample, user: User.all.sample)
  }

5.times{
  Reservation.create!(start_date: Faker::Date.in_date_period(year: 2020, month: 1), end_date: Faker::Date.between(from: 7.days.ago, to: Date.today), user: User.all.sample, listing: Listing.all.sample)
  }

5.times{
  Reservation.create!(start_date: Faker::Date.forward(days: 30), end_date: Faker::Date.in_date_period(year: 2020, month: 4), user: User.all.sample, listing: Listing.all.sample)
  }