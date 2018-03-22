class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :tracking_number
      t.string :order_status
      t.decimal :product_cost
      t.string :total_price

      t.timestamps
    end
  end
end
