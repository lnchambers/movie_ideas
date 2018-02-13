require "rails_helper"

describe "As a registered User" do
  before :each do
    @user = create(:user)
  end
  describe "when I create a movie idea" do
    it "an image is stored with that movie" do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
      visit new_user_movie_path(@user)

      fill_in "movie[title]", with: "Eupanifahorious Goes To Mars"
      fill_in "movie[description]", with: "Read the title"
      fill_in "movie[images]", with: "http://www.hannibal.lib.mo.us/the-movies-logo-1[1].gif"
      click_on "Create Movie"

      expect(page).to have_content("Eupanifahorious Goes To Mars")
      expect(page).to have_content("Read the title")
      expect(page).to have_content("0")
      expect(page).to have_content("http://www.hannibal.lib.mo.us/the-movies-logo-1[1].gif")
    end
  end
end
