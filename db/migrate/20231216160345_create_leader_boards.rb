class CreateLeaderBoards < ActiveRecord::Migration[7.1]
  def change
    create_table :leader_boards do |t|
      t.float :score
      t.datetime :submission_time
      t.references :quiz, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
