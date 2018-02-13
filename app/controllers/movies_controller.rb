class MoviesController < ApplicationController
  def edit
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def index
    @movies = Movie.all
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

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    redirect_to movies_path
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      @movie.images.create!(url: params[:movie][:images]) if params[:movie][:images]
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :category_id, :user_id)
  end
end
