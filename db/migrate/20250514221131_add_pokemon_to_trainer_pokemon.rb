class AddPokemonToTrainerPokemon < ActiveRecord::Migration[8.0]
  def change
    add_reference :trainer_pokemon, :pokemon, null: false, foreign_key: true
  end
end
