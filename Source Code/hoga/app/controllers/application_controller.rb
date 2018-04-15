class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:school_name, :student_id, :ps_id, :ssn])
  end

end
