class CommentsController < ApplicationController



    def index
        @comments = Comment.all
    end

    def show;end

    def new
        @comment = Comment.new
    end

    def edit
      @comment = Comment.find(params[:id])
      @post_id = @comment.user_id
    end

    def update
      @comment = Comment.find(params[:id])
      puts @comment
      @comment.update(params.require(:comment).permit!)
    end

    def create
        comment = Comment.create(params[:comment].permit!)
        redirect_to root_path if comment.persisted?
    end

    def destroy
        comment = Comment.find(params[:id]).delete
        puts comment.post_id
        redirect_to post_path(comment.post_id)
    end

    private

    def find_comment
        @comment = Comment.find(params[:id])
    end
end
