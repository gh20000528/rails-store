class ApplicationController < ActionController::Base
  include Pagy::Backend
  rescue_from ActiveRecord::RecordNotFound , with: :not_found
    def after_sign_in_path_for(resource)
        # your path
        stores_path 
    end


    private
    def not_found
      render file:Rails.root.join('public' , '404.html'), 
             layout:false , 
             status: 404 and return
    
    end
end
