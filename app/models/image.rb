class Image < ApplicationRecord
  validates_presence_of :url
  belongs_to :movie
end
