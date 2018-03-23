class AddProductRefToOriginal < ActiveRecord::Migration[5.1]
  def change
    add_reference :originals, :product, foreign_key: true
  end
end
