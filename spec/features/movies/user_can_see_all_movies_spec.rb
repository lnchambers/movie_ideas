require "rails_helper"

describe "As a registered User" do
  before :each do
    @movie = create(:movie)
  end
  describe "when I visit the movies page" do
    it "I can see a list of all the movies that I have created" do
      Rating.create(movie: @movie, user: @movie.user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@movie.user)
      visit user_movies_path(@movie.user)

      expect(page).to have_content("#{@movie.title}")
      expect(page).to have_content("#{@movie.description}")
      expect(page).to have_content("#{@movie.total_rating}")
    end
  end
end
