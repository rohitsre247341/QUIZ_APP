class CreateImageOptions < ActiveRecord::Migration[7.1]
  def change
      create_table :image_options do |t|
        t.binary :image, limit: 10.megabytes
        t.boolean :is_answer, default: false
        t.string :image_name
        t.string :content_type
        t.string :image_path
        t.timestamps
    end
  end
end
