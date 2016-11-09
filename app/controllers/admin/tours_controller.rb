class Admin::ToursController < ApplicationController
  load_and_authorize_resource params_method: :tour_params

  def index
    @search = Tour.search params[:q]
    @tours = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  end

  def show
  end

  def new
    @category = Category.find_by_id params[:category_id]
    @tour = Tour.new
  end

  def create
    if @tour.save
      flash[:notice] = t "tour.create_success"
      redirect_to admin_tours_path
    else
      flash[:alert] = t "tour.create_fail"
      redirect_to admin_tours_path
    end
  end

  def edit
    @category = Category.find_by_id params[:category_id]
  end

  def update
    if @tour.update_attributes tour_params
      flash[:notice] = t "tour.update_success"
      redirect_to admin_tours_path
    else
      flash[:alert] = t "tour.update_fail"
      render :edit
    end
  end

  def destroy
    if @tour.destroy
      flash[:notice] = t "tour.delete_success"
      redirect_to admin_tours_path
    else
      flash[:alert] = t "tour.delete_fail"
      redirect_to admin_tours_path
    end
  end

  private
  def tour_params
    params.require(:tour).permit :name, :startPlace, :endPlace, :description,
      :price, :startDate, :endDate, :category_id
  end
end
