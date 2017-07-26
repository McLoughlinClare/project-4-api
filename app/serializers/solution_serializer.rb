class SolutionSerializer < ActiveModel::Serializer
  attributes :id, :answer, :correct, :challenge, :teacher_comment, :student_comment
  has_one :challenge
  has_one :student
end
