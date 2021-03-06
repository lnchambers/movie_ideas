class User < ApplicationRecord
  has_secure_password
  validates_presence_of :email, :username, :password
  validates_uniqueness_of :email, :username
  has_many :ratings, dependent: :destroy
  has_many :movies, dependent: :destroy

  enum role: ["default", "admin"]

  def total_ratings
    ratings.sum(:value)
  end

end
