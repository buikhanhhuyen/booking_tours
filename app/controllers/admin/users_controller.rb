class Admin::UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @search = User.where.not(role: 0).search params[:q]
    @users = @search.result
  end

  def show
  end

  def destroy
    if @user.destroy
      flash[:notice] = t "admin_users.delete_success"
    else
      flash[:alert] = t "admin_users.delete_fail"
    end
    redirect_to admin_users_path
  end
end
