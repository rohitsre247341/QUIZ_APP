class CreateQuizQuestions < ActiveRecord::Migration[7.1]
  def change
    create_join_table :questions, :quizzes
  end
end
