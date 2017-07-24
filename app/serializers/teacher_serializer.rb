class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest
  has_one :school
end
