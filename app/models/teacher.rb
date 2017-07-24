class Teacher < ApplicationRecord
  has_secure_password
  belongs_to :school
  has_many :students, through: :school
  validates :email, uniqueness: true, presence: true
end
