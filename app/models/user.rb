class User < ApplicationRecord
  has_many :appointments
  has_many :animals, through: :appointments
end
