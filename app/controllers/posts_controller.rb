class PostsController < ApplicationController
  #show action
  def show 
    @post = Post.find(params[:id])
  end 
end 