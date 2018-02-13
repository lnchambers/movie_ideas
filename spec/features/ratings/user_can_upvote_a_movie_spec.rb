require "rails_helper"

describe "As a registered User" do
  before :each do
    @movie = create(:movie)
    @user = create(:user)
  end
  describe "when I visit the movies/:id page" do
    skip "I can click on the upvote button and the rating is saved" do
      visit movie_path(@movie)

      click_on "Upvote"

      expect(page).to have_content("Total Ratings: 1")
    end
  end
end
