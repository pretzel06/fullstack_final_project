class Product < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :original

  validates :product_name, :release_date, :product_status, :sales_price, presence: true
end
