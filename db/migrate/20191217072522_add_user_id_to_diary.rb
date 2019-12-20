class AddUserIdToDiary < ActiveRecord::Migration[5.2]
  def change
    add_reference :diaries, :user, foreign_key: true
    add_index :diaries, [:date, :user_id], unique: true
  end
end
