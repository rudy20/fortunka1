class CommentsController < ApplicationController
  def create
  	  @fortune = Fortune.find(params[:fortune_id])
  	  @comment = @fortune.comments.create(params[:comment])
  	  redirect_to fortune_path(@fortune)
  end
  
    def destroy
    	    @fortune = Fortune.find(params[:fortune_id])
    	    @comment = @fortune.comments.find(params[:id])
    	    @comment.destroy
    	    redirect_to fortune_path(@fortune)
  end
  
end
