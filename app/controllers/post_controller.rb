class PostController < ApplicationController
    def index
        @posts = Post.all
      end
    
      def new
        @post = Post.new
      end
    
      def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/post"
      end
    
    end
