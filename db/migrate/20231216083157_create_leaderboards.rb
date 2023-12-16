class CreateLeaderboards < ActiveRecord::Migration[7.1]
  def change
    create_table :leaderboards do |t|
      t.float :score
      t.datetime :submission_time
      t.references :quiz, primary_key: true
      t.references :user, primary_key: true

      t.timestamps
    end
  end
end
