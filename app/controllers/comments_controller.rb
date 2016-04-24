class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(allowed_params)
    if @comment.save
      redirect_to @comment.article, notice: "Successfully created comment."
    else
      render :new
    end
  end
  
  private
  
  def allowed_params
    params.require(:comment).permit!
  end
end
