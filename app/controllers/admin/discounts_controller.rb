class Admin::DiscountsController < ApplicationController
  load_and_authorize_resource params_method: :discount_params
  before_action :check_discount, except: [:new, :create]

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
      flash[:notice] = t "discount.create_success"
      redirect_to admin_discounts_path
    else
      flash[:alert] = t "discount.create_fail"
      render :new
    end
  end

  def edit
  end

  def update
    if @discount.update_attributes discount_params
      flash[:notice] = t "discount.update_success"
      redirect_to admin_discounts_path
    else
      flash[:alert] = t "discount.update_fail"
      render :edit
    end
  end

  def destroy
    if @discount.destroy
      flash[:notice] = t "discount.delete_success"
    else
      flash[:alert] = t "discount.delete_fail"
    end
    redirect_to admin_discounts_path
  end

  private
  def discount_params
    params.require(:discount).permit :name, :percent, :description, :start_date,
      :end_date
  end

  def check_discount
    @discount = Discount.fdiscount.find_by_id params[:id]
  end
end
