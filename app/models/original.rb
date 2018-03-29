class Original < ApplicationRecord
  has_many :products
  validates :name, presence: true
  paginates_per 3
end
