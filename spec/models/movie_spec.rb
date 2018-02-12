require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "Validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:rating) }
  end
   describe "Relationships" do
     it "has one image" do
       movie = create(:movie)

       expect(movie).to respond_to(:image)
     end

     it "has many categories" do
       movie = create(:movie)

       expect(movie).to respond_to(:categories)
     end
  end
end
