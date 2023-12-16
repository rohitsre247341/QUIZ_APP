class CreateUsersAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :users_answers do |t|
      t.references :users_quiz, foreign_key: true
      t.references :question, foreign_key: true
      t.references :selected_options, foreign_key: true

      t.timestamps
    end
  end
end
