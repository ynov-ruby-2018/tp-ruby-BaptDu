class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
      post = Post.new(post_params)
      post.save

      redirect_to root_path
  end

private
    def post_params
        params.require(:post).permit(
            :content
        ).merge(user_id: current_user.id)
  end

end
