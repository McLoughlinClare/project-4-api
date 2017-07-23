class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :title, :question, :answer
  has_one :topic
end
