class ApplicationController < ActionController::Base
  include StoreHelper
  helper_method :has_gender?

end
