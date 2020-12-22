class RegistrationsController < Devise::RegistrationsController

    protected

 def after_update_path_for(resource)
        stored_location_for(resource) ||
          if resource.is_a?(Brand)
            '/welcome/index'
          elsif resource.is_a?(Customer)
            '/welcome/customer'
          end
      end
end
