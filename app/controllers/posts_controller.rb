class PostsController < ApplicationController
  def index
    @posts = Post.order("created_at DESC").page params[:page]
  end

  def show
    @post = Post.find params[:id]
    @comments = @post.comments.order("created_at DESC").page(params[:page]).per(10)
    @comment = Comment.new
    @comment.post_id = @post.id
  end

  def edit
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new
    post.assign_attributes params[:post]
    post.user_id = current_user.id
    post.save!
    redirect_to post_path post
  end
end
