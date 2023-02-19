class CreateMoves < ActiveRecord::Migration[6.1]
  def change
    create_table :moves do |t|
      t.string :move_1
      t.string :move_2
      t.string :move_3
      t.string :move_4
      t.integer :pokemon_id
    end
  end
end
