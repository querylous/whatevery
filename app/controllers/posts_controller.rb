class PostsController < ApplicationController
  
  respond_to :html

  def index
    if user_signed_in?
      @posts = Post.paginate(:page => params[:page], :per_page => 20)
      respond_with(@posts)
    else
      @posts = Post.paginate(:page => params[:page], :per_page => 20).where(posted: true)
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def new
    if user_signed_in?
      @post = Post.new
    else
      redirect_to "/users/sign_in"
      flash[:notice] = "Please sign in first."
    end
  end

  def create 
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
    if params[:tweet_this] = true 
      $twitter.update(params[:tweet_msg] + " " + 
                      "http://whatevery.co/posts/#{@post.id}")
    end
    respond_with(@post)
  end

  def destroy
    Post.find(params[:id]).destroy
    flash[:succes] = "Post Deleted"

    redirect_to posts_url
  end 

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      respond_with(@post)
      flash[:success] = "Post updated!"
    else
      render 'edit'
    end
  end

  def edit
    if user_signed_in?
      @post = Post.find(params[:id])
    else
      redirect_to "/users/sign_in"
      flash[:notice] = "Please sign in first."
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :notes, :sponsor,
                                   :posted, :file_link, :guests, :user)
    end
end
