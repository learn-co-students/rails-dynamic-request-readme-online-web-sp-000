class PostsController < ApplicationController
    def show
        @post = Post.find(params[:id]) #it gets the ID sent by the user through the dynamic URL
    end
end
