class ApplicationController < ActionController::Base
  #this will prevent an error message in the event that a user tries to edit another user's data
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, alert: exception.message
  end
end
