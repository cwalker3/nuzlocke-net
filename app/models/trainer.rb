class Trainer < ApplicationRecord
  belongs_to :area
  has_many :trainer_pokemon
end
