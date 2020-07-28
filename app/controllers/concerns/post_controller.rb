class PostsController < ApplicationController
  
  def show
    @post = Post.find(params[:id])
  end
end


#bundle exec rails c
