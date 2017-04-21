class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  add_flash_types :pop
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_user

  def user_voted answer
    u = current_user.voted_answers.find_by_id(answer.id)
    if u.nil?
      return false
    else
      return true
    end
  end
  
  helper_method :user_voted

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name , :number])
  end

  def set_user
  	if user_signed_in?
  		@user = current_user
  	else
  		@user = User.new()
  	end
  end
end
