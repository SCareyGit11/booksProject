class InterestedsController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def create
  	interested = Interested.create(user: current_user, book_id:params[:book_id])
  	read = Read.where(user_id: current_user.id, book_id:params[:book_id])[0]
  	if read
  		read.destroy
  	end

    current = Current.where(user_id: current_user.id, book_id:params[:book_id])[0]
    if current
    	current.destroy
    end
    redirect_to '/books'
  end
end
