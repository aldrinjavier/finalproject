class SessionsController < ApplicationController
  

  def create
	customer = Customer.find_by_email_address(params[:email_address])
	if customer && customer.authenticate(params[:password])
		session[:customer_id] = customer.id
		redirect_to session[:return_to] || root_path
		flash[:notice] = "Your log in was successful."
	else
		flash[:notice] = "Invalid name/password combination... Try again!"
		render 'new'
	end
  end

  def destroy
	if signed_in?
				session[:customer_id] = nil
				session[:return_to] = root_path
	else
		session[:return_to] = request.fullpath
				flash[:notice] = "You need to sign in first"
	end
				redirect_to root_path
				
  end
  
  
  
end
