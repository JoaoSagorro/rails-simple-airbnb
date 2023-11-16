require 'faker'

puts 'Cleaning your database'
Flat.destroy_all

puts '...'

puts 'Planting seeds'

30.times do
  new_flats = Flat.new({
    name: Faker::JapaneseMedia::DragonBall.character,
    address: Faker::Address.full_address,
    description: Faker::ChuckNorris.fact,
    price_per_night: "#{Faker::Number.decimal(l_digits: 3, r_digits: 2)} $$",
    number_of_guests: Faker::Number.number(digits: 2)
  })

  new_flats.save
  puts 'One flat created'
end

puts 'All done, congrats'
