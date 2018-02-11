class MoviesController < ApplicationController
  def edit
    @movie = Movie.find(params[:id])
  end

  def new
  end

  def index
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    if @movie.save
      redirect_to movie_path(@movie)
    else
      render :edit
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :rating)
  end
end
