require 'rest-client'
puts "🌱 Seeding pokemon..."

pokemons = []

10.times do 
  pokemons.push(Faker::Games::Pokemon.name)
end

pokemons.each do |poke|
  response = RestClient.get "https://pokeapi.co/api/v2/pokemon/#{poke.downcase}/"

  poke_hash = JSON.parse(response)

  Pokemon.create(
    name: poke_hash["name"],
    sprite: poke_hash["sprites"]["front_default"],
    trainer_id: Faker::Number.within(range: 1..5)
  )
  
end

5.times do 
  Trainer.create(
    name: Faker::Name.name
  )
end

10.times do 
  Move.create(
    move_1: Faker::Games::Pokemon.move,
    move_2: Faker::Games::Pokemon.move,
    move_3: Faker::Games::Pokemon.move,
    move_4: Faker::Games::Pokemon.move,
    pokemon_id: Faker::Number.within(range: 1..10)
  )
end

puts "✅ Done seeding!"
