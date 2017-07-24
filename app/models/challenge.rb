class Challenge < ApplicationRecord
  belongs_to :topic
  has_many :solutions
end
