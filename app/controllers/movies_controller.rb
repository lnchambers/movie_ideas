class MoviesController < ApplicationController
  def edit
    @images = Image.all
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
    if !params[:user_id]
      redirect_to movies_path
    elsif params[:user_id].to_i == current_user.id
      @movie = Movie.find(params[:id])
    end
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    if @movie.save
      movie_image = MovieImage.where(movie_id: params[:id])
      movie_image.destroy_all
      create_movie_image_relationship if params[:movie][:image_ids]
      redirect_to movie_path(@movie)
    else
      render :edit
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    rating = Rating.where(movie_id: params[:id])
    rating.destroy_all
    movie_image = MovieImage.where(movie_id: params[:id])
    movie_image.destroy_all
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
