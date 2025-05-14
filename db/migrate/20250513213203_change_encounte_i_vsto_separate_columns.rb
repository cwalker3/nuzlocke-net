class ChangeEncounteIVstoSeparateColumns < ActiveRecord::Migration[8.0]
  def change
    rename_table :encounters, :user_pokemon

    remove_column :user_pokemon, :ivs

    add_column :species, :string
    add_column :nickname, :string
    add_column :user_pokemon, :hp_iv, :string
    add_column :user_pokemon, :hp_attack, :string
    add_column :user_pokemon, :hp_defense, :string
    add_column :user_pokemon, :hp_special_attack, :string
    add_column :user_pokemon, :hp_special_defense, :string
    add_column :user_pokemon, :hp_speed, :string
  end
end
