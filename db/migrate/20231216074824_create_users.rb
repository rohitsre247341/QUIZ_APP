class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :first_name
      t.string :last_name
      t.string :password
      t.integer :user_type, default: 0, limit:1
      t.datetime :last_log
      t.datetime :last_log_in

      t.timestamps
    end
  end
end