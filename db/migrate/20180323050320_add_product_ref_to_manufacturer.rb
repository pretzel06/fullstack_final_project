class AddProductRefToManufacturer < ActiveRecord::Migration[5.1]
  def change
    add_reference :manufacturers, :product, foreign_key: true
  end
end
