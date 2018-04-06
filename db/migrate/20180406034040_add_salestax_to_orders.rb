class AddSalestaxToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :sales_tax, :decimal
  end
end
