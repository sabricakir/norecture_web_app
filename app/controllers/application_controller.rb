class ApplicationController < ActionController::Base
  include StoreHelper
  helper_method :has_params?
  include TurboHelper

end
