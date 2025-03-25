class User < ApplicationRecord
  validates :uid, presence: true, uniqueness: { scope: :provider }
  validates :email, presence: true, uniqueness: true
  # Add other validations as needed
end
