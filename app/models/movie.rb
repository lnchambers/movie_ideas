class Movie < ApplicationRecord
  validates_presence_of :title, :description
  has_many :images
  has_many :movie_categories
  has_many :categories, through: :movie_categories
  has_many :ratings

  def total_rating
    ratings.sum(:rating)
  end
end
