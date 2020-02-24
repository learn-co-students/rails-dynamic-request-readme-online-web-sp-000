class PostsController < ApplicationController

    def show
        @post = Post.find(params[:id])
        #We first need to get the ID sent by the user through the dynamic URL. 
        #This variable is passed into the controller in a hash called params.
        # Since we named the route :id, the ID will be the value of the :id key, stored in params[:id].
    end

end
