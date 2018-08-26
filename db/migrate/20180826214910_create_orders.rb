class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :full_name
      t.text :mailing_address
      t.string :country
      t.string :city
      t.integer :phone_number
      t.string :email
      t.integer :pay_type

      t.timestamps
    end
  end
end
