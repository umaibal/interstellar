class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :seat
      t.integer :meal_preference
      t.string :destination
      t.time :departure_time
      t.time :arrival_time

      t.timestamps
    end
  end
end
