class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def create
    render :index if !current_admin?
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_category_path(@category)
    else
      render :new
    end
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    if @category.save
      redirect_to admin_category_path(@category)
    else
      render :edit
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to admin_categories_path
  end

  private

    def category_params
      params.require(:category).permit(:name, :image)
    end
end
