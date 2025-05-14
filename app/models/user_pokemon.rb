class UserPokemon < ApplicationRecord
  has_many :kills
  has_many :participations
end
