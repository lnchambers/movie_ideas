class MovieImage < ApplicationRecord
  validates_uniqueness_of :movie_id, scope: :image_id
  belongs_to :movie
  belongs_to :image
end
