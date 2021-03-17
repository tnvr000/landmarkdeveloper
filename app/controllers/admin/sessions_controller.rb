# frozen_string_literal: true

class Admin::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  
  layout 'admin/application'
  
  # GET /admin/users/sign_in
  def new
    super

  end

  # POST /admin/users/sign_in
  def create
    super
  end

  # DELETE /admin/users/sign_out
  def destroy
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
