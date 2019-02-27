class ApplicationController < ActionController::Base
  before_action :authenticate_user!, if: :controller?
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def controller?
    print controller_name
    if controller_name == "home"
      false
    else
      true
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :station, :preparation_time])
  end
end
