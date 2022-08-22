module StoreHelper

  def has_gender?
    if params[:gender] || params[:q]
      true
    else
      false
    end
  end
end
