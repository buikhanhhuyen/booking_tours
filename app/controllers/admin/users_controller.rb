class Admin::UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @search = User.search params[:q]
    @users = @search.result
  end

  def show
  end

  def destroy
    if @user.destroy
      flash[:notice] = t "user.delete_success"
      redirect_to admin_users_path
    else
      flash[:alert] = t "user.delete_fail"
      redirect_to admin_users_path
    end
  end
end
