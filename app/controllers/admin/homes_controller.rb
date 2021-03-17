class Admin::HomesController < Admin::ApplicationController
  def index
    # byebug
    redirect_to new_admin_user_session_url and return unless admin_user_signed_in?
  end
end
