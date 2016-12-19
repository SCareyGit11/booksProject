class BooksController < ApplicationController
  def new
  end

  def show
  	Book.find(params[:id])
  end

  def index
  end
end
