class CreateProductOrders < ActiveRecord::Migration[5.1]
  def change
    drop_table :product_orders
    create_table :product_orders do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
