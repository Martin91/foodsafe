class PostsController < ApplicationController
  def index
    @posts = Post.page params[:page]
  end

  def show
    @post = Post.find params[:id]
    @comments = @post.comments.order("created_at DESC").page params[:page]
    @comment = Comment.new
    @comment.post_id = @post.id
  end

  def edit
  end

  def new
  end
end
