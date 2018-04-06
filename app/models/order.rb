class Order < ApplicationRecord
  belongs_to :customer
  has_many :products
  has_and_belongs_to_many :products
  validates :total_price, :product_cost, numericality: true
  validates :order_status, presence: true
end
