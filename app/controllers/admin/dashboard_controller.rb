class Admin::DashboardController < Admin::BaseController
  def index
    @image = Image.new
    @category = Category.new
  end
end
