class CommentsController < ApplicationController
    #def index
     #   @comments = Comment.all    
    #end
    
    def create
        @comment = Comment.new(comment_params)
        @comment.save
        redirect_to :back
    end

    def show
        @comment = Comment.find(params[:id])
       
    end
    
    def edit
        @comment = Comment.find(params[:id])
    end
    
    def update
        @comment = Comment.find(params[:id])
        @eatery = @comment.eatery_id
        @comment.update(comment_params)
        redirect_to eatery_path(@eatery)
    end
    
    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
    end
    
    def comment_params
    params.require(:comment).permit(:content, :eatery_id, :promotion_id)
    end
    
end
