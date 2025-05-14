class Area < ApplicationRecord
  has_many :trainers
  has_many :wild_pokemon
end
