module StoreHelper

  def has_gender?
    if params[:gender]
      true
    else
      false
    end
  end
end
