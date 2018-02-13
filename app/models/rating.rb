class Rating < ApplicationRecord
  validates_presence_of :value
  belongs_to :movie
  belongs_to :user
end
