require "rails_helper"

describe "As a registered User" do
  before :each do
    @user = create(:user)
  end
  describe "when I visit the movies/new page" do
    it "I can create a new movie idea" do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
      visit new_user_movie_path(@user)

      fill_in "movie[title]", with: "Eupanifahorious Goes To Mars"
      fill_in "movie[description]", with: "Read the title"
      click_on "Create Movie"

      expect(page).to have_content("Eupanifahorious Goes To Mars")
      expect(page).to have_content("Read the title")
      expect(page).to have_content("0")
    end
  end
end
