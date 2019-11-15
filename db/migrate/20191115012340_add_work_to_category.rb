class AddWorkToCategory < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :work, foreign_key: true
  end
end
