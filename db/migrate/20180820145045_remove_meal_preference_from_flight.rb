class RemoveMealPreferenceFromFlight < ActiveRecord::Migration[5.2]
  def change
    remove_column :flights, :meal_preference, :integer
  end
end
