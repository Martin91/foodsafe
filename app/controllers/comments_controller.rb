class CommentsController < ApplicationController
  def create
    comment = Comment.new
    comment.user_id = current_user.id
    comment.post_id = params[:post_id]
    comment.body = params[:comment][:body]
    comment.save
    redirect_to posts_path
  end
end
