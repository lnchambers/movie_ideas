class Admin::CategoriesController < ApplicationController
  before_action :require_admin

  def index
    @categories = Category.all
  end

  def edit
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  private

    def require_admin
      render file: "/public/404" unless current_admin?
    end
end
