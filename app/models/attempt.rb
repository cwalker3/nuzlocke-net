class Attempt < ApplicationRecord
  belongs_to :nuzlocke
  has_many :user_pokemon
  # has_many :defeated_trainers
end
