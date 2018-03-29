class ProductController < ApplicationController
  def index
    @products = Product.order(:product_name)
  end

  def show
    @products = Product.find(params[:id])
  end

  def product_results
    @found_products = Product.keyword_search(params[:search_keywords])
  end
end
