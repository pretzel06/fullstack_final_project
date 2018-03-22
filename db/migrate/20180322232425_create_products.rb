class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.date :release_date
      t.string :product_status
      t.decimal :sales_price

      t.timestamps
    end
  end
end
