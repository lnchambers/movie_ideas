class Movie < ApplicationRecord
  validates_presence_of :title, :description, :rating
  has_one :image
end
