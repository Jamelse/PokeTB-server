class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/trainers' do
    trainers = Trainer.all
    trainers.to_json
  end

  get "/trainers/:id" do
    trainer = Trainer.find(params[:id])
    trainer.to_json(include: :pokemons)
  end

  get "/trainers/:trainer_id/pokemon" do 
    team = Trainer.find(params["trainer_id"])
    team.pokemons.to_json(include: :trainer)
  end

  patch "/trainers/:id" do
    trainer = Trainer.find(params[:id])
    trainer.update(
      name: params[:name],
      trainer_img: params[:trainer_img]
    )
    trainer.to_json(include: :pokemons)
  end

  post "/trainers" do 
    trainer = Trainer.create(params)
    trainer.to_json(include: :pokemons)
  end

  delete "/trainers/:id" do 
    trainer = Trainer.find(params[:id])
    trainer.destroy
    trainer.to_json
  end

  get '/pokemon' do
    poke = Pokemon.all.order(:name)
    poke.to_json
  end

  get "/pokemon/:id" do
    poke = Pokemon.find(params[:id])
    poke.to_json(include: :moves)
  end

  delete "/pokemon/:id" do 
    pokemon = Pokemon.find(params[:id])
    pokemon.destroy
    pokemon.to_json
  end

  post "/trainers/:trainer_id/pokemon" do
    trainer = Trainer.find(params["trainer_id"])
    pokemon = trainer.pokemons.create(params)
    pokemon.to_json
  end

  patch "/pokemon/:id" do
    pokemon = Pokemon.find(params[:id])
    pokemon.update(
      name: params[:name],
      sprite: params[:sprite],
      poke_type: params[:poke_type],
      description: params[:description]
      )
    pokemon.to_json(include: :moves)
  end

  get "/pokemon/:pokemon_id/moves" do
    pokemon = Pokemon.find(params["pokemon_id"])
    pokemon.moves.to_json(include: :pokemon)
  end

  get "/moves" do 
    moves = Move.all
    moves.to_json
  end

  get "/moves/:id" do
    moves = Move.find(params[:id])
    moves.to_json(include: :pokemon)
  end

  patch "/moves/:id" do
     moves = Move.find(params[:id])
     moves.update(
      move_1: params[:move_1],
      move_2: params[:move_2],
      move_3: params[:move_3],
      move_4: params[:move_4]
     )
     moves.to_json
  end

  delete "/moves/:id" do
    moves = Move.find(params[:id])
    moves.destroy
    moves.to_json
  end

  post "/pokemon/:pokemon_id/moves" do
    pokemon = Pokemon.find(params["pokemon_id"])
    moves = pokemon.moves.create(params)
    moves.to_json
  end

end
