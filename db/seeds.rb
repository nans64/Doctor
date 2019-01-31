# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

10.times do
  City.create(
      name: Faker::Address.city,
      )
end

10.times do
  Doctor.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      postal_code: Faker::Address.postcode,
      city_id: rand(1..City.all.count)
  )
end

10.times do
  Specialty.create(
      specialty_name: Faker::Company.profession,
      doctor_id: rand(1..Doctor.all.count)
      )
end

10.times do
  Patient.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      city_id: rand(1..City.all.count)
  )
end

10.times do
  Appointment.create(
      date: Faker::Date.forward(23),
      doctor_id: rand(1..Doctor.all.count),
      patient_id: rand(1..Patient.all.count)
  )
end