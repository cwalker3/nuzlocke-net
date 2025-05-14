class Game < ApplicationRecord
  has_many :nuzlockes
  has_many :trainers, dependent: :destroy
end
