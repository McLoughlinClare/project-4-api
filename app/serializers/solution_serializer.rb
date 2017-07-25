class SolutionSerializer < ActiveModel::Serializer
  attributes :id, :answer, :correct, :challenge
  has_one :challenge
  has_one :student
end
