class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :appointments
  has_many :animals, through: :appointments
end
