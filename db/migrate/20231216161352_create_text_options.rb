class CreateTextOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :text_options do |t|
      t.integer :option
      t.string :is_answer
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
