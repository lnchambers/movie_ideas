class Image < ApplicationRecord
  validates_presence_of :url
  validates_uniqueness_of :url
  has_many :movie_images
  has_many :movies, through: :movie_images
end
