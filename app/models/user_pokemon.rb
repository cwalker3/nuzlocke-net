class UserPokemon < ApplicationRecord
  belongs_to :attempt
  has_many :kills
  has_many :participations
end
