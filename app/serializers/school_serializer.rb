class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name, :total_correct_answers, :average_correct
  has_many :teachers
  has_many :students

  def total_correct_answers
    object.students.reduce(0) do |acc, student|
      correct_answers = student.solutions.select(&:correct).length
      acc + correct_answers
    end
  end

def average_correct
  total_correct_answers / object.students.length.to_f
end

end
