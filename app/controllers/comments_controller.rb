class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params_comment)
    @post = Post.find(params[:post_id])
    @comment.user = current_user
    @comment.post = @post

    if @comment.save
      redirect_to post_path(@post), notice: "Comment duly saved"
    else
      render 'posts/show', status: :unprocessable_entity
    end
  end

  private

  def params_comment
    params.require(:comment).permit(:content)
  end

end
