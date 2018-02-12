class RatingsController < ApplicationController
  def create
    Rating.create!(rating_params) if Movie.find(params[:movie_id]) == nil && User.find(current_user) == nil

    redirect_to movie_path(params[:movie_id])
  end

  private

  def rating_params
    params.require(:ratings).permit(:movie_id, :user_id, :rating)
  end
end
