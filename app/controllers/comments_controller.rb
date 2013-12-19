class CommentsController < ApplicationController
  def create
    @post = post.find(params[:post_id])
    @comments = @post.comments.build(params[:comment])
    @comment.save

    redirect_to @posts
  end

  def destroy
  end
end
