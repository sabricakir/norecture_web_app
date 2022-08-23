class StoreController < ApplicationController
  def index
    @products = Product.filter(filtering_params)
  end

  def filtering_params
    params.slice(:gender, :contains, :color, :product_type, :less_than_price, :more_than_price, :price_range, :ascending_price, :descending_price)
  end
end