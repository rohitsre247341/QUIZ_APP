class AddRefToQuestions < ActiveRecord::Migration[7.1]
  def change
    add_reference :questions, :user_quiz
  end
end
