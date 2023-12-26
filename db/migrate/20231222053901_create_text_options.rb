class CreateTextOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :text_options do |t|
      t.string :text
      t.boolean :is_answer, default: false
      t.timestamps
    end
  end
end
