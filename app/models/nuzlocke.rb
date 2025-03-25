class Nuzlocke < ApplicationRecord
  belongs_to :user
  belongs_to :game

  enum status: { active: 0, dropped: 1, on_hold: 0 }
end
