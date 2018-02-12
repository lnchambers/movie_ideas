require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "Validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:rating) }
    it { should have_many(:movie_categories) }
    it { should have_many(:categories).through(:movie_categories) }
    it { should have_many(:images) }
  end
end
