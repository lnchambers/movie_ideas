class MoviesController < ApplicationController
  def edit
    @movie = current_user.movies.find(params[:id])
  end

  def new
    @images = Image.all
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
      create_movie_image_relationship if params[:movie][:image_ids]
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :category_id, :user_id)
  end

  def create_movie_image_relationship
    params[:movie][:image_ids].each do |image_id|
      MovieImage.create!(movie_id: @movie.id, image_id: image_id) if !image_id.empty?
    end
  end
end
