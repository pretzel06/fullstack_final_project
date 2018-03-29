class ManufacturerController < ApplicationController
  def index
    @manufacturers = Manufacturer.order(:name).page(params[:page])
  end

  def show
    @manufacturers_products = Product.all.where(manufacturer_id: params[:id])
  end
end
