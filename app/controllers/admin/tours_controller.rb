class Admin::ToursController < ApplicationController
  load_and_authorize_resource
  before_action :check_tour, except: [:new, :create]

  def index
    @search = Tour.search params[:q]
    @tours = @search.result
  @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  end

  def show
  end

  def new
    @categories = Category.all
    @discounts = Discount.where.not status: :expried
    @places = Place.all
  end

  def create
    @category = Category.find_by_id params[:category_id]
    @discount = Discount.find_by_id params[:discount_id]
    @place = Place.find_by_id params[:place_id]
    if @tour.save
      flash[:notice] = t "tour.create_success"
      redirect_to admin_tours_path
    else
      flash[:alert] = t "tour.create_fail"
      @categories = Category.all
      render :new
    end
  end

  def edit
    @categories = Category.all
    @discounts = Discount.all
  end

  def update
    @category = Category.find_by_id params[:category_id]
    @discount = Discount.find_by_id params[:discount_id]
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
    params.require(:tour).permit :name, :price, :category_id,
      :currency, :start_date, :end_date, :min_visitors, :max_visitors,
      :accommodation, :meals, :transport, :additional_services,
      :discount_id, :start_place_id, :end_place_id
  end

  def check_tour
    @tour = Tour.ftour.find_by_id params[:id]
  end
end
