class StoreController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct:true)
  end
end