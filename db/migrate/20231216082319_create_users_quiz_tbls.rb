class CreateUsersQuizTbls < ActiveRecord::Migration[7.1]
  def change
    create_table :users_quiz_tbls do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, foreign_key: true
      t.references :quiz, foreign_key: true
      t.integer :attempt, default: 1
      t.integer :score

      t.timestamps
    end
  end
end
