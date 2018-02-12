require "rails_helper"

describe "As a visitor" do
  describe "when I visit the root page" do
    it "I can sign up to be a new user" do
      visit root_path

      click_on "Sign up"

      expect(current_path).to eq(new_user_path)

      fill_in "user[username]", with: "Opakawagalaga"
      fill_in "user[password]", with: "password123lol"
      fill_in "user[email]", with: "thisismyemail@email.com"
      click_on "Create User"

      expect(current_path).to eq(user_path(User.last))
      expect(page).to have_content("Welcome Opakawagalaga")
      expect(page).to have_content("Total Ratings: 0")
    end
  end
end
