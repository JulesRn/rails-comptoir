class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :photo, :height, :description, :sex, :sexual_orientation, :intention, :drinker, :smoker])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :age, :photo, :height, :description, :sex, :sexual_orientation, :intention, :drinker, :smoker])
  end

  def default_url_options
    { host: ENV["www.comptoir.fun"] || "localhost:3000" }
  end

  # def request_date_feedback
  #   redirect_to users_path if true

  # end

end
