class Admin::ImagesController < Admin::BaseController

  def new
    @image = Image.new
  end

  def create
    render :index if !current_admin?
    @image = Image.new(image_params)
    if @image.save
      redirect_to admin_dashboard_path
    else
      render :new
    end
  end

  private

    def image_params
      params.require(:image).permit(:url)
    end

end
