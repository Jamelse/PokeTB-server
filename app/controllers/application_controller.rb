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

  get '/pokemon' do
    poke = Pokemon.all.order(:name)
    poke.to_json
  end

  get "/pokemon/:id" do
    poke = Pokemon.find(params[:id])
    poke.to_json(include: :moves)
  end

end
