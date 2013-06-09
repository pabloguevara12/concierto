class ApplicationController < ActionController::Base
  protect_from_forgery
end



def not_authenticated
  redirect_to login_url, :alert => "First login to access this page."
end

