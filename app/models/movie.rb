class Movie < ApplicationRecord
  validates_presence_of :title, :description, :rating
  has_many :images
  has_many :movie_categories
  has_many :categories, through: :movie_categories
end
