class Attempt < ApplicationRecord
  belongs_to :nuzlocke
  has_many :attempt_pokemon
  has_many :defeated_trainers
end
