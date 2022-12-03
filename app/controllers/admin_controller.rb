class AdminController < ApplicationController
  def index
  end

  def posts
    # @posts = Post.includes(:user, :comments)
    @posts = Post.includes(:user)
  end

  def comments
  end

  def users
    @users = User.includes(:post)
  end

  def show_post
    @post = Post.includes(:user, comments: [:user, :rich_text_body]).find(params[:id])
  end
end
