class StoreController < ApplicationController
  def index
    if params[:gender]
      @products = Product.where(gender: params[:gender])
    else
      @products = Product.all
    end
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
  end
end