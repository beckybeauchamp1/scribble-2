class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order(:id)
  end

  def create
  end

  def new
    @comment = Comment.new
  end

  def show
  end

  def update
  end

  def destroy
  end

end
