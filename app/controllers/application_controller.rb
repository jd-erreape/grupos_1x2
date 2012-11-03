class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  private

  def after_sign_in_path_for(resource)
    if resource.class.name == "Admin"
      admin_path
    elsif resource.class.name == "User"
      (request.referer.include? request.fullpath) ? root_path : request.referer #sustituir root_path por current_user_path
    else
      super
    end
  end

end
