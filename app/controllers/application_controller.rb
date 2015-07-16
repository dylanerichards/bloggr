class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def confirm_logged_in
    unless current_user
      flash[:notice] = "Please log in"
      redirect_to root_path
      return false
    else
      return true
    end
  end
end
