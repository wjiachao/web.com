class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
  end

  def index
    @post = Post.first
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :created_at, :updated_at)
    end
end
