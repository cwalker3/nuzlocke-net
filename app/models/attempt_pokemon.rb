class AttemptPokemon < ApplicationRecord
  belongs_to :attempt
  belongs_to :pokemon
  has_many :kills
  has_many :participations

  enum stats: {
    failed: 0,
    alive: 1,
    dead: 2
  }
end
