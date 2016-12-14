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
      flash[:notice] = t "review.delete_success"
    else
      flash[:alert] = t "review.delete_fail"
    end
    redirect_to :back
  end
end
