class PostsController < ApplicationController

def show
   @posts = Posts.find(params[:id])
end

def new
end

def destroy
end

def update
end

end
