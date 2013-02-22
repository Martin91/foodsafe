class PostsController < ApplicationController
  def index
    @posts = Post.page params[:page]
  end

  def show
  end

  def edit
  end

  def new
  end
end
