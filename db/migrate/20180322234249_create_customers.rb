class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :customer_address
      t.string :customer_phone_number

      t.timestamps
    end
  end
end
