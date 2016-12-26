class CommentsController < ApplicationController
  load_and_authorize_resource
  before_action :find_commentable

  def index

  end

  def show
  end

  def new
    @review = Review.find_by_id params[:review_id]
    @comment = Comment.new
  end

  def create
    @comment = @commentable.comments.build comment_params
    @comment.user = current_user
    @comment.review_id = params[:review_id]
    @review = Review.find_by_id params[:review_id]
    if @comment.save
      flash[:notice] = t "user_comments.create_success"
      redirect_to :back
    else
      flash[:alert] = t "user_comments.create_fail"
      render :new
    end
  end

  def edit
    @review = Review.find_by_id params[:review_id]
  end

  def update
    if @comment.update_attributes comment_params
      flash[:notice] = t "user_comments.update_success"
      redirect_to :back
    else
      flash[:alert] = t "user_comments.update_fail"
      render :edit
    end
  end

  def destroy
    @comment.review_id = params[:review_id]
    @review = Review.find_by_id params[:review_id]
    if @comment.destroy
      flash[:notice] = t "user_comments.delete_success"
    else
      flash[:alert] = t "user_comments.delete_fail"
    end
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit :content
  end

  def find_commentable
    @commentable = if params[:comment_id]
      Comment.find_by_id params[:comment_id]
    elsif params[:review_id]
      Review.find_by_id params[:review_id]
    end
  end
end
