class CreateSolutions < ActiveRecord::Migration[5.1]
  def change
    create_table :solutions do |t|
      t.references :challenge, foreign_key: true
      t.references :student, foreign_key: true
      t.text :answer
      t.boolean :correct

      t.timestamps
    end
  end
end
