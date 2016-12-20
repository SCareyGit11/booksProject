class UsersController < ApplicationController
  def index
  end

  def new
  end

  def show
   @user = User.find(params[:id])
   render 'show'
  end

  def edit
  end

  def create
    
    @user = User.create(first_name: params[:user][:first_name], last_name: params[:user][:last_name], email: params[:user][:email], password: params[:user][:password])
    session[:name] = @user.first_name
    session[:user_id] = @user.id
      if @user.valid?
        flash[:success] = "You are registered.You can log in"
        session[:user_id] = @user.id
        session[:name] = @user.first_name
        
        redirect_to '/books'
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to '/users/new'
      end
  end
end
