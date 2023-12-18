class CreateUserQuizzes < ActiveRecord::Migration[7.1]
  def change
    create_table :user_quizzes do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, foreign_key: true
      t.references :quiz, foreign_key: true
      t.integer :attempt, default: 1
      t.float :score

      t.timestamps
    end
  end
end
