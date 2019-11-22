class RemoveCategoryFromWork < ActiveRecord::Migration[5.2]
  def change
    remove_column :works, :category, :string
  end
end
