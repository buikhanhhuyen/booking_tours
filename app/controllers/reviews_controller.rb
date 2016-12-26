class ReviewsController < ApplicationController
  load_and_authorize_resource params_method: :review_params

  def show
    @comment = Comment.new
    @comments = @review.comments
  end

  def new
    @place = Place.find_by_id params[:place_id]
    @review = Review.new
  end

  def create
    @review = current_user.reviews.build review_params
    if @review.save
      Notification.create user: current_user, notifiable_type: "Review", notifiable_id: @review.id
      flash[:notice] = t "user_reviews.create_success"
      redirect_to place_path @review.place
    else
      flash[:alert] = t "user_reviews.create_fail"
      @place = Place.find_by_id params[:place_id]
      render :new
    end
  end

  def edit
    @place = Place.find_by_id params[:place_id]
  end

  def update
    if @review.update_attributes review_params
      flash[:notice] = t "user_reviews.update_success"
      redirect_to place_path @review.place
    else
      flash[:alert] = t "user_reviews.update_fail"
      render :edit
    end
  end

  def destroy
    @place = @review.place
    if @review.delete
      flash[:notice] = t "user_reviews.delete_success"
    else
      flash[:alert] = t "user_reviews.delete_fail"
    end
    redirect_to place_path @place
  end

  private
  def review_params
    params.require(:review).permit :title, :content, :place_id
  end
end
