class CreateQuestionOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :question_options do |t|
      t.integer :option
      t.string :question_optionable_type
      t.bigint :question_optionable_id
      t.timestamps
    end
    add_index :question_options, [:question_optionable_id, :question_optionable_type]
  end
end
