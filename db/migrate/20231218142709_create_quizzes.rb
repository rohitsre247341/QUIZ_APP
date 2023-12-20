class CreateQuizzes < ActiveRecord::Migration[7.1]
  def change
    create_table :quizzes do |t|
      t.string :title, null: false
      t.text :description
      t.integer :time_limit
      t.references :category, foreign_key: true
      t.integer :difficulty_level, default: 0, limit: 1
      t.references :admin, foreign_key: true
      t.integer :quiz_type, default: 0, limit: 1
      t.timestamps
    end
  end
end