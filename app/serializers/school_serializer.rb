class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :teachers
  has_many :students
end
