class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name, :icon

  has_many :challenges

end
