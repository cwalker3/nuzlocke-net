class Kill < ApplicationRecord
  belongs_to :user_pokemon
  belongs_to :trainer_pokemon
end
