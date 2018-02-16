class PostsController < ApplicationController

    before_action :find_post, only: [:show, :destroy]

    def index
        @posts = Post.all
    end

      def show;end

    def new
        @post = Post.new
    end

    def edit
      @post = Post.find(params[:id])
    end

    def create
        post = Post.create(params[:post].permit!)
        redirect_to root_path if post.persisted?
    end

    def destroy
        @post.destroy
    end

    private

    def find_post
        @post = Post.find(params[:id])
    end
    
end
