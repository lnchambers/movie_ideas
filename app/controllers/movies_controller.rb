class MoviesController < ApplicationController
  def edit
    @movie = current_user.movies.find(params[:id])
  end

  def new
    @user = current_user
    @movie = Movie.new
  end

  def index
    if params[:user_id]
      user = User.find(params[:user_id])
      @movies = user.movies
    else
      @movies = Movie.all
    end
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
    redirect_to user_movies_path(current_user)
  end

  def create
    @movie = current_user.movies.new(movie_params)
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
