class Product < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :original
  has_and_belongs_to_many :orders

  validates :product_name, :release_date, :product_status, :sales_price, presence: true
  mount_uploader :image, ImageUploader
  paginates_per 3
  def self.keyword_search(keywords)
    keywords = '%' + keywords + '%'
    Product.where('product_name LIKE ?', keywords)
  end
end
