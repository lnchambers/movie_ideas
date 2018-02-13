require "rails_helper"

describe "As a registered User" do
  before :each do
    @movie = create(:movie)
    @user = create(:movie)
  end
  describe "when I visit the movie/:id/edit page" do
    it "I can edit a movie idea that I created" do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
      visit edit_movie_path(@movie)
      fill_in "movie[title]", with: "Eupanifahorious Goes To Mars"
      fill_in "movie[description]", with: "Read the title"
      click_on "Update Movie"

      expect(current_path).to eq(movie_path(@movie))
      expect(page).to have_content("Eupanifahorious Goes To Mars")
      expect(page).to have_content("Read the title")
      expect(page).to have_content("0")
    end
  end
end
