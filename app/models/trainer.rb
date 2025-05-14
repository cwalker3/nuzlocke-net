class Trainer < ApplicationRecord
  belongs_to :area
  has_many :trainer_pokemon
  has_many :participation_events
end
