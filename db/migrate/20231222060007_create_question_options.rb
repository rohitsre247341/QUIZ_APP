class CreateQuestionOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :question_options do |t|
      t.string :question_optionable_type
      t.bigint :question_optionable_id
      t.references :question, foreign_key: true
      t.timestamps
    end
  end
end
