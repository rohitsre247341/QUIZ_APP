class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :full_name, null: false, index: true
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false, index: true
      t.string :password, null: false
      t.string :password_confirmation
      t.integer :user_type, default: 0
      t.datetime :last_login
      t.string :last_login_ip
      t.timestamps
    end
  end
end
