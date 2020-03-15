class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
  before_action :confirmed?
  
  def confirmed?
    redirect_to edit_users_activates_path if current_user && current_user.confirmed_at.nil? && controller_name != 'activates' && request.path != sign_out_path
  end
end
