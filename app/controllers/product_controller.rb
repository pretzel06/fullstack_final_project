class ProductController < ApplicationController
  def index
    @products = Product.order(:product_name)
  end

  def show
    @products = Product.find(params[:id])
  end
end
