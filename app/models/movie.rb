class Movie < ApplicationRecord
  validates_presence_of :title, :description, :rating
end
