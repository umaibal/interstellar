class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.integer :document_type
      t.date :expiration_date
      t.integer :passport_number
      t.integer :drivers_licence_number

      t.timestamps
    end
  end
end
