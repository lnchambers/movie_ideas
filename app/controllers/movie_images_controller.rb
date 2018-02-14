class MovieImagesController < ApplicationController

  def create
    MovieImage.create!(movie_id: params[:movie_id], image_id: params[:image_id])
  end

end
