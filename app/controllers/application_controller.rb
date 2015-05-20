class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include ActionController::ImplicitRender
   before_filter :configure_permitted_parameters, if: :devise_controller?


   protected

   def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :rank, :user_type) }
   end
  respond_to :json
end
