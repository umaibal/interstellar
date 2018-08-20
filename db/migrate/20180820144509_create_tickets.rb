class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :meal_preference
      t.integer :seat_selection
      t.integer :num_luggage

      t.timestamps
    end
  end
end
