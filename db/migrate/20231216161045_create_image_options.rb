class CreateImageOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :image_options do |t|
      t.string :image
      t.string :is_answer
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
