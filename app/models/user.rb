class User < ApplicationRecord
  has_secure_password
  validates_presence_of :email, :username, :password
  validates_uniqueness_of :email, :username
  has_many :ratings

  def total_ratings
    ratings.sum(:value)
  end
end
