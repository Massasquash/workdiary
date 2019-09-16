class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.datetime :date
      t.string :category
      t.string :title
      t.text :body
      t.string :image
      t.references :diary, foreign_key: true

      t.timestamps
    end
  end
end
