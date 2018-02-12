require "rails_helper"

describe "As a future User" do
  describe "when I visit the root path" do
    it "I see a link to log in or sign up" do
      visit root_path

      expect(page).to have_content("New user? Sign up")
      expect(page).to have_content("Returning user? Log in")
    end
  end
end
