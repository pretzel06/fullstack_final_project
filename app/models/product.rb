class Product < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :original
  has_many :product_orders
  has_many :orders, through: :product_orders

  validates :product_name, :release_date, :product_status, :sales_price, presence: true
  mount_uploader :image, ImageUploader
  paginates_per 3
  def self.keyword_search(keywords)
    keywords = '%' + keywords + '%'
    Product.where('product_name LIKE ?', keywords)
  end
end
