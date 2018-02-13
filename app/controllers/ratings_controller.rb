class RatingsController < ApplicationController

  def create
    binding.pry
    movie = Movie.find(params[:movie_id])
    curent_user.ratings.create(movie: movie)

    redirect_to movie_path(movie)
  end

end
