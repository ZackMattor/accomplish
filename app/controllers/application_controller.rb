class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :site_name

  def site_name
    "Accomplish"
  end
end
