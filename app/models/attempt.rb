class Attempt < ApplicationRecord
  belongs_to :nuzlocke
  has_many :encounters
  # has_many :defeated_trainers
end
