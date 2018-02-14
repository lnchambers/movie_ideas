class Movie < ApplicationRecord
  validates_presence_of :title, :description
  has_many :movie_images
  has_many :images, through: :movie_images
  belongs_to :category
  has_many :ratings
  belongs_to :user

  def total_rating
    ratings.sum(:value)
  end
end
