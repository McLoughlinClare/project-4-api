class Student < ApplicationRecord
  has_secure_password
  belongs_to :school
  has_many :solutions
  has_many :teachers, through: :school
  validates :email, presence: true
validates :email, uniqueness: true, presence: true
end
