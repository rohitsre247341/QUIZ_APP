class CreateQuizzes < ActiveRecord::Migration[7.1]
  def change
    create_table :quizzes do |t|
      t.string :title, null: false, index: true
      t.text :description
      t.integer :time_limit
      t.references :category, foreign_key: true
      t.integer :difficulty_level, default: 0
      t.references :admin, foreign_key: {to_table: :users}
      t.integer :quiz_type, default: 0
      t.float :cut_off, null: false
      t.timestamps
    end
  end
end