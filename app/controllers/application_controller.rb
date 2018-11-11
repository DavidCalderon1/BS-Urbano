class ApplicationController < ActionController::Base
	
  protected
    def after_sign_in_path_for(resource)
      route_for(:home) || stored_location_for(resource) || root_path
      
    end
end
