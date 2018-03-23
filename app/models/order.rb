class Order < ApplicationRecord
  belongs_to :customer
  has_many :products
  validates :total_price, :product_cost, numericality: true
  validates :order_status, presence: true
end
