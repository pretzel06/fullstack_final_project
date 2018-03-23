class AddOriginalRefToProduct < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :original, foreign_key: true
  end
end
