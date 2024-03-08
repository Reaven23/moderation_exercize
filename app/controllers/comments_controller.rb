class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params_comment)
    @post = Post.find(params[:post_id])
    @comment.user = current_user
    @comment.post = @post

    if user_signed_in?
      if @comment.save
        redirect_to post_path(@post), notice: "Comment duly saved"
      else
        flash[:comment_content] = @comment.content
        render 'posts/show', status: :unprocessable_entity
      end
    else
      redirect_to new_user_session_path
    end
  end


  private

  def params_comment
    params.require(:comment).permit(:content)
  end

end
