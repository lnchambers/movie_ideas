require "rails_helper"

describe "As a registered User" do
  before :each do
    @movie = create(:movie)
    @user = create(:user)
  end
  describe "when I visit the movies/:id page" do
    it "I can click on the upvote button and the rating is saved" do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
      visit movie_path(@movie)

      click_on "Upvote"

      expect(page).to have_content("Total Ratings: 1")
    end

    it "I cannot click on the upvote button twice" do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
      visit movie_path(@movie)

      click_on "Upvote"

      expect(page).to have_content("Total Ratings: 1")

      click_on "Upvote"

      expect(page).to have_content("Total Ratings: 1")
      expect(page).to_not have_content("Total Ratings: 2")
    end
  end
end
