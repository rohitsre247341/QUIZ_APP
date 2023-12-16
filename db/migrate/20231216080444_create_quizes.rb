class CreateQuizes < ActiveRecord::Migration[7.1]
  def change
    create_table :quizes do |t|
      t.string :title
      t.text :description
      t.integer :time_limit
      t.references :category, foreign_key: true
      t.integer :difficulty_level, default: 0, limit: 1
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
