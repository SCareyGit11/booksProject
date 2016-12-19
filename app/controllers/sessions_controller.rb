class SessionsController < ApplicationController
  def create
  	user = User.find_by_email(params[:email])
  	if params[:email] == nil
  		flash[:errors] = "Email can't be empty"
  	end
  	if params[:password] == nil
  		flash[:errors] = "Password can't be empty"
  	end
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		session[:name] = user.first_name
  		@user = user
  		redirect_to '/books'
  	else 
  		flash[:errors] = "Invalid combination"
  		redirect_to '/users/new'
  	end
  end

  def delete
  	session[:user_id] = nil
  	redirect_to '/users/new'
  end
end
