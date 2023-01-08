# frozen_string_literal: true

# If the controller is a Devise controller, then run the configure_permitted_parameters method before
# any other methods in the controller are run.
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters if :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username full_name phone_number])
  end
end
