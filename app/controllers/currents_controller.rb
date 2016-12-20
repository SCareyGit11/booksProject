class CurrentsController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def create
  	current = Current.create(user: current_user, book_id: params[:book_id])
  end

  def destroy
  	User.delete(params[:id])
  end
end
