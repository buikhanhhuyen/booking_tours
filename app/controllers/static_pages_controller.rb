class StaticPagesController < ApplicationController
  before_action :set_search

  def show
    if valid_page?
      render "static_pages/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  private
  def valid_page?
    File.exist? Pathname
      .new Rails.root + "app/views/static_pages/#{params[:page]}.html.erb"
  end

  def set_search
    @search=Tour.search(params[:q])
  end
end
