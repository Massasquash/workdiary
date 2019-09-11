class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.date :date, index: { unique: true }
      t.text :body

      t.timestamps
    end
  end
end
