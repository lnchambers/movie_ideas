require 'rails_helper'

RSpec.describe Image, type: :model do
  it { should validate_presence_of(:url) }
  it { should have_many(:movie_images) }
  it { should have_many(:movies).through(:movie_images) }
end
