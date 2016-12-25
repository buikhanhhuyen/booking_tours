class Admin::ReviewsController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
    @comments = @review.comments
  end

  def destroy
    @place = @review.place
    if @review.delete
      flash[:notice] = t "admin_reviews.delete_success"
    else
      flash[:alert] = t "admin_reviews.delete_fail"
    end
    redirect_to :back
  end
end
