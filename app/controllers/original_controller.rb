class OriginalController < ApplicationController
  def index
    @originals = Original.order(:name).page(params[:page])
  end

  def show
    @originals_products = Product.all.where(original_id: params[:id])
  end
end
