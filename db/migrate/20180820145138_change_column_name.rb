class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :flights, :seat, :total_seats
  end
end
