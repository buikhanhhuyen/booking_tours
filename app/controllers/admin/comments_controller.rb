class Admin::CommentsController < ApplicationController
  def destroy
    @review = @comment.review
    if @comment.destroy
      flash[:notice] = t "comment.delete_success"
    else
      flash[:alert] = t "comment.delete_fail"
    end
    redirect_to admin_review_path @review
  end
end
