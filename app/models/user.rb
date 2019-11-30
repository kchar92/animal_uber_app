class User < ApplicationRecord
  has_many :appointments
  has_many :animals, through: :appointments

  def full_name
    "#{first_name} #{last_name}"
  end
end
