require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "Validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should belong_to(:category) }
    it { should have_many(:movie_images) }
    it { should have_many(:images).through(:movie_images) }
    it { should have_many(:ratings) }
  end
end
