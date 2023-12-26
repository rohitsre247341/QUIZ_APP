class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :category_name , null: false, index: :unique
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
