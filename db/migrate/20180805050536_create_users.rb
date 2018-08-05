class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :full_name
      t.text :mailing_address
      t.string :country
      t.string :city
      t.integer :phone_number
      t.string :email
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end
