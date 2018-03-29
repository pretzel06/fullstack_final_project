class ManufacturerController < ApplicationController
  def index
    @manufacturers = Manufacturer.order(:name)
  end

  def show
    @manufacturers_products = Product.all.where(manufacturer_id: params[:id])
  end
end
