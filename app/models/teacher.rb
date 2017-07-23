class Teacher < ApplicationRecord
  has_secure_password
  belongs_to :school
  validates :email, uniqueness: true, presence: true
end
