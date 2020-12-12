class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :auth!

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[name])
    end

    def auth!
      if params[:must_auth]
        authenticate_user!
        authorize
      end
    end

    def authorize
      unless current_user.admin?
        render file: "#{Rails.root}/public/404.html", status: 404
      end
    end
end
