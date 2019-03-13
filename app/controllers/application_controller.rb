class ApplicationController < ActionController::Base
  before_action :authenticate_user!, if: :controller?
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def controller?
    if controller_name == "home"
      false
    else
      true
    end
  end

  def authenticate_user!
    if action_name == "mypage"
      redirect_to new_user_session_path unless user_signed_in?
    end
    super
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :station, :preparation_time])
  end
end
