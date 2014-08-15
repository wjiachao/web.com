class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :created_at, :updated_at)
    end
end
