class Image < ApplicationRecord
  validates_presence_of :url
  has_many :movies
end
