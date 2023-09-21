class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = Comment.all
  end

  private

  def post_params
    params.require(:post).permit(:content, :url, :photo, title)
  end
end
