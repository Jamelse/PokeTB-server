class CreatePokemon < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :sprite
      t.string :poke_type
      t.string :description
      t.integer :trainer_id
    end
  end
end
