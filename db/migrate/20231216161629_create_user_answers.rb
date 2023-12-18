class CreateUserAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :user_answers do |t|
      t.references :user_quiz, foreign_key: true
      t.references :question, foreign_key: true
      t.references :selected_options, foreign_key: true

      t.timestamps
    end
  end
end
