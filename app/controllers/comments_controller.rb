class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order(:id)
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create! comment_params
    redirect_to post_path(@post)
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_body)
  end

end
