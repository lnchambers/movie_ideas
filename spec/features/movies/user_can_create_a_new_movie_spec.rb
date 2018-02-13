require "rails_helper"

describe "As a registered User" do
  describe "when I visit the movies/new page" do
    skip "I can create a new movie idea" do
      visit new_movie_path

      fill_in "movie[title]", with: "Eupanifahorious Goes To Mars"
      fill_in "movie[description]", with: "Read the title"
      click_on "Create Movie"

      expect(page).to have_content("Eupanifahorious Goes To Mars")
      expect(page).to have_content("Read the title")
      expect(page).to have_content("0")
    end
  end
end
