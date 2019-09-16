class ChangeDataDateToWork < ActiveRecord::Migration[5.2]
  def change
    change_column :works, :date, :date
  end
end
