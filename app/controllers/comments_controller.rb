class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user = current_user
    @comment.save!
    redirect_to @post
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :comment)
  end
end
