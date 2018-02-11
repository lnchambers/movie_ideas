class MoviesController < ApplicationController
  def edit
  end

  def new
  end

  def index
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
