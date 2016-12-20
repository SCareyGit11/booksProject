class CommentsController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def create
  	@comment = Comment.create(review: params[:comment][:review],user_id: params[:user_id],book_id: params[:book_id])
  	redirect_to "/books/" + params[:book_id].to_s
  end
end
