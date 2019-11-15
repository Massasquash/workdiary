class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.text :body
      t.references :work, foreign_key: true

      t.timestamps
    end
  end
end
