class Category < ApplicationRecord
  validates_presence_of :name, :image
  has_many :movies
end
