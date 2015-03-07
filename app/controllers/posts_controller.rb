class PostsController < ApplicationController

  respond_to :html

  def index
     @post = Post.all
     respond_with(@post)
  end
  
  def show
     @posts = Post.find(params[:id])
  end

  def new
     if user_signed_in?
       @post = Post.new
     else
       redirect_to user/sign_in
     end
  end

  def create 
     @post = Post.new(post_params)
     @post.user = current_user
     @post.save
     respond_with(@post)
  end

  def destroy
  end

  def update
  end

  private

    def post_params
      params.require(:post).permit(:title, :notes, :sponsor,
                                   :posted, :file_link, :guests, :user)
    end
end
