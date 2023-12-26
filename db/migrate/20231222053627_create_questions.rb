class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.text :question_text, null: false
      t.integer :option_type, default: 0
      t.references :admin, foreign_key: {to_table: :users} 
      t.references :category, foreign_key: true
      t.integer :difficulty_level, default: 0 , null: false
      t.integer :marks, default: 0
      t.timestamps

    end
  end
end
