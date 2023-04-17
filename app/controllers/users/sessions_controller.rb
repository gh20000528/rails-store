# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  
  # def new
    # respond_to do |format|
    #   format.html { render partial: "sessions/new" }
    # end
  # end

  # # POST /resource/sign_in
  # def create
  #   super

  #   redirect_to stores_path, turbolinks: {location: stores_path}
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
