class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :title, :surname, :email, :password_digest
  has_one :school
end
