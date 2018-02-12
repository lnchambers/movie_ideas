require 'rails_helper'

describe "As a registered User" do
  describe "when I visit the movie/:id page" do
    before :each do
      @movie = create(:movie)
    end
    it "I can see a single movie that I created" do
      visit movie_path(@movie)
      expect(page).to have_content(@movie.title)
      expect(page).to have_content(@movie.description)
    end
  end
end
