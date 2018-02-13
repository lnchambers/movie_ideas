require "rails_helper"

describe "As a registered User" do
  before :each do
    @movie = create(:movie)
    @user = create(:user)
  end
  describe "when I visit the movies page" do
    it "I can see a list of all the movies that I have created" do
      visit user_movies_path(@user)

      expect(page).to have_content("#{@movie.title}")
      expect(page).to have_content("#{@movie.description}")
      expect(page).to have_content("#{@movie.total_rating}")
    end
  end
end
