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
    if user_signed_in?
      @post = Post.new
    else
      session["user_return_to"] = new_post_path
      redirect_to new_user_session_path
    end
  end

  def create
    post = Post.new
    post.assign_attributes params[:post]
    post.user_id = current_user.id
    post.save!
    redirect_to post_path post
  end
end
