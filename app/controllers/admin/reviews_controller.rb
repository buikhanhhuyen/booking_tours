class Admin::ReviewsController < ApplicationController
  load_and_authorize_resource

  def show
    @comment = @review.comments
  end

  def destroy
    @place = @review.place
    if @review.delete
      flash[:notice] = t "review.delete_success"
      redirect_to admin_place_path @place
    else
      flash[:alert] = t "review.delete_fail"
      redirect_to admin_place_path @place
    end
  end
end
