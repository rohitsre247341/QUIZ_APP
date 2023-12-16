class CreateQuizeQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :quize_questions, primary_key: [:question_id, :quiz_id] do |t|
      t.integer :question_id
      t.integer :quiz_id

      t.timestamps
    end
  end
end
