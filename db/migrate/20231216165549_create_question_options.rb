class CreateQuestionOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :question_options do |t|
      t.integer :option
      t.string :ques_type
      t.integer :ques_id

      t.timestamps
    end
  end
end
