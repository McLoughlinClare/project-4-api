class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password_digest
  has_one :school
  has_many :solutions, through: :challenge
  has_many :teachers, through: :school
end
