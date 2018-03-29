class Product < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :original

  validates :product_name, :release_date, :product_status, :sales_price, presence: true
  mount_uploader :image, ImageUploader

  def self.keyword_search(keywords)
    keywords = '%' + keywords + '%'
    Product.where('product_name LIKE ?', keywords)
  end
end
