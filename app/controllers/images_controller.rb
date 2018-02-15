class ImagesController < ApplicationController

  def create
    render :index if !current_admin?
    @image = Image.create(image_params)
    redirect_to admin_dashboard_path
  end

  private

    def image_params
      params.require(:image).permit(:url)
    end

end
