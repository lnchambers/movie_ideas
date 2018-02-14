class RatingsController < ApplicationController

  def create
    movie = Movie.find(params[:movie_id])
    current_user.ratings.create(movie: movie)

    redirect_to movie_path(movie)
  end

end
