require "rails_helper"

describe "As a registered User" do
  before :each do
    @movie = create(:movie)
  end
  describe "when I visit the movies page" do
    it "I can see a list of all the movies that I have created" do
      visit movies_path

      expect(page).to have_content("#{@movie.title}")
      expect(page).to have_content("#{@movie.description}")
    end
  end
end
