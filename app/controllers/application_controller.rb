class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # Redirect to login on sensative areas of the site
  private
    def require_login
      unless current_admin
        redirect_to root_path
      end
    end
end
