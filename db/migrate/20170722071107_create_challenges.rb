class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :question
      t.text :answer
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
