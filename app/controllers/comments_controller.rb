class CommentsController < ApplicationController



    def index
        @comments = Comment.all
    end

    def show;end

    def new
        @comment = Comment.new
    end


    def create
        comment = Comment.create(params[:comment].permit!)
        redirect_to root_path if comment.persisted?
    end

    def destroy
        @comment.destroy
    end

    private

    def find_comment
        @comment = Comment.find(params[:id])
    end
end
