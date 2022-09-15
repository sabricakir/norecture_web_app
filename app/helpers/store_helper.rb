module StoreHelper

  def has_params?
    if params[:gender] || params[:product_type] || params[:contains]
      true
    else
      false
    end
  end
end
