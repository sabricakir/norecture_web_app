class HomeController < ApplicationController
  def index
    if app_mobile?
      redirect_to store_path, data: { action: 'replace' }
    end
  end
end