class ApplicationController < ActionController::Base
    devise_group :user, contains: [:customer, :provider]
    before_action :configure_permitted_parameters, if: :devise_controller?
       

protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end

    def after_sign_in_path_for(resource)
        stored_location_for(resource) ||
          if resource.is_a?(Brand)
            challenges_path
          elsif resource.is_a?(Customer)
            tricks_path
          end
      end

    #   def after_sign_out_path_for(scope)
    #     # return the path based on scope
    #   end
    


end
