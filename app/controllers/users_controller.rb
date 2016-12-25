class UsersController < ApplicationController
  load_and_authorize_resource

  def show
    @user = User.find_by_id params[:id]
  end

  def destroy
    if @user.destroy
      flash[:notice] = t "user.delete_success"
      redirect_to root_url
    else
      flash[:alert] = t "user.delete_fail"
      redirect_to :back
    end
  end
end
