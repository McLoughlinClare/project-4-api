class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :title, :question, :answer
  has_one :topic
  has_many :solutions
end
