require "rails_helper"

describe "A a registered User" do
  before :each do
    @movie = create(:movie)
  end
  describe "when I visit the movie/:id page" do
    it "I can delete the movie from the show page" do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@movie.user)
      visit user_movie_path(@movie)

      click_on "Delete"

      expect(page).to_not have_content("#{@movie.title}")
      expect(page).to_not have_content("#{@movie.description}")
      expect(page).to_not have_content("#{@movie.total_rating}")
    end
  end
end
