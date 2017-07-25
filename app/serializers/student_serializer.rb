class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password_digest, :correct_answers
  has_one :school
  has_many :solutions, through: :challenge
  has_many :teachers, through: :school

  def correct_answers
    object.solutions.select(&:correct).length
  end
end
