class CreateQuizQuestions < ActiveRecord::Migration[7.1]
  def change
    create_join_table :questions, :quizzes do |t|
      t.index :question_id
      t.index :quiz_id
      t.timestamps
    end
  end
end
