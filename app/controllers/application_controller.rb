class ApplicationController < ActionController::Base
  protect_from_forgery
  include ApplicationHelper
  
  def authorise
	unless signed_in?
		store_location
		redirect_to signin_path, :notice => "Please sign in to download this album."

	end
end

	
	def store_location
		session[:return_to] = request.fullpath
	end
end