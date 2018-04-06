class Customer < ApplicationRecord
  has_many :orders
  validates :customer_name, :customer_address,
            :customer_phone_number, presence: true

  def name
    customer_name
  end
end
