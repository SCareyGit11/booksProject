class InterestedsController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def create
  	interested = Interested.create(user: current_user, book_id:params[:book_id])
  end
end
