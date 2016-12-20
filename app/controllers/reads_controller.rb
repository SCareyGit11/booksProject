class ReadsController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def create
  	read = Read.create(user: current_user, book_id:params[:book_id])
  	current = Current.where(user_id: current_user.id, book_id:params[:book_id])[0]
  	if current
  		current.destroy
  	end
  	interested = Interested.where(user_id: current_user.id, book_id:params[:book_id])[0]
  	if interested 
  		interested.destroy
  	end

  	redirect_to '/books'
  end
end
