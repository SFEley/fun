# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  protected
  # Basic authentication for now, taken from ENV variables FUN_ADMIN_USER and FUN_ADMIN_PASSWORD
  def authenticate
    authenticate_or_request_with_http_basic("Fun!") do |username, password|
      username == ENV["FUN_ADMIN_USER"] && password == ENV["FUN_ADMIN_PASS"]
    end
  end
end
