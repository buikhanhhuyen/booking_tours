class Admin::DiscountsController < ApplicationController
  load_and_authorize_resource params_method: :discount_params

  def index
    @search = Discount.search params[:q]
    @discounts = @search.result
  end

  def show
  end

  def new
    @discount = Discount.new
  end

  def create
    if @discount.save
      flash[:notice] = t "admin_discounts.create_success"
      redirect_to admin_discounts_path
    else
      flash[:alert] = t "admin_discounts.create_fail"
      render :new
    end
  end

  def edit
  end

  def update
    if @discount.update_attributes discount_params
      flash[:notice] = t "admin_discounts.update_success"
      redirect_to admin_discounts_path
    else
      flash[:alert] = t "admin_discounts.update_fail"
      render :edit
    end
  end

  def destroy
    if @discount.destroy
      flash[:notice] = t "admin_discounts.delete_success"
    else
      flash[:alert] = t "admin_discounts.delete_fail"
    end
    redirect_to admin_discounts_path
  end

  private
  def discount_params
    params.require(:discount).permit :name, :percent, :description, :start_date,
      :end_date
  end
end
