class Category < ApplicationRecord
  validates_presence_of :name, :image
  validates_uniqueness_of :name
  has_many :movies
end
