class Kill < ApplicationRecord
  belongs_to :attempt_pokemon
  belongs_to :trainer_pokemon
end
