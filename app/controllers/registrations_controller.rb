class RegistrationsController < Devise::RegistrationsController

    protected

 def after_update_path_for(resource)
        stored_location_for(resource) ||
          if resource.is_a?(Brand)
            challenges_path
          elsif resource.is_a?(Customer)
            tricks_path
          end
      end
end
