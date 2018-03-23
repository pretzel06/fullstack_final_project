class AddManufacturerRefToProduct < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :manufacturer, foreign_key: true
  end
end
