class AddStudentCommentToSolutions < ActiveRecord::Migration[5.1]
  def change
    add_column :solutions, :student_comment, :text
  end
end
