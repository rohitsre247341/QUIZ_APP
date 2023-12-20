class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.text :question_text
      t.integer :option_type, default: 0, limit: 1
      t.references :admin, foreign_key: true 
      t.references :category, foreign_key: true
      t.string :difficulty_level

      t.timestamps
    end
  end
end
#  fourth table should b question option