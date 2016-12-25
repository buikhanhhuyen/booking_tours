class Admin::CategoriesController < ApplicationController
  load_and_authorize_resource params_method: :category_params

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    if @category.save
      flash[:notice] = t "admin_categories.create_success"
      redirect_to admin_categories_path
    else
      flash[:alert] = t "admin_categories.create_fail"
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update_attributes category_params
      flash[:notice] = t "admin_categories.update_success"
      redirect_to admin_categories_path
    else
      flash[:alert] = t "admin_categories.update_fail"
      render :edit
    end
  end

  def destroy
    if @category.destroy
      flash[:notice] = t "admin_categories.delete_success"
      redirect_to admin_categories_path
    else
      flash[:alert] = t "admin_categories.delete_fail"
      redirect_to admin_categories_path
    end
  end

  private
  def category_params
    params.require(:category).permit :title, :description
  end
end
