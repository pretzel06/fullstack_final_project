class Customer < ApplicationRecord
  belongs_to :order
  validates :customer_name, :customer_address, :customer_phone_number, presence: true
end
