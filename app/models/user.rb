class User < ApplicationRecord
  has_many :appointments
  has_many :animals, through: :appointments
  has_secure_password
  validates :email, presence: true, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
