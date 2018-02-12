class MovieImage < ApplicationRecord
  belongs_to :movie
  belongs_to :image
end
