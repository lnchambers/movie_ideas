class Admin::CategoriesController < Admin::BaseController

  def index
    @categories = Category.all
  end

  def edit
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
  end

end
