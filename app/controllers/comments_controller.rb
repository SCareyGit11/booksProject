class CommentsController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def create
  	@comment = Comment.create(review: params[:comment][:review], rating: params[:comment][:rating], user_id: params[:user_id],book_id: params[:book_id])
    redirect_to "/books/#{params[:book_id]}"


  end

  def destroy
    comment = Comment.find(params[:id])
    redirect_to "/books/#{comment.book_id}"
    comment.destroy

  end
end
