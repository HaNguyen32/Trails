class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    private
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,
                                        keys: [:nick_name, :email, :last_name, :first_name, :sex_id, :date_birth,:encrypted_password])
    end

end
