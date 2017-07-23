class SolutionSerializer < ActiveModel::Serializer
  attributes :id, :answer, :correct
  has_one :challenge
  has_one :student
end
