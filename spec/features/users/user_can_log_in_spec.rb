require "rails_helper"

describe "As a visitor" do
  before :each do
    @user = create(:user)
  end
  describe "when I visit the root page" do
    it "I can log in and see my personal info" do
      visit root_path

      click_on "Log in"

      expect(current_path).to eq(login_path)

      fill_in "username", with: @user.username
      fill_in "password", with: @user.password
      click_on "Log In"

      expect(current_path).to eq(user_path(@user))
      expect(page).to have_content("Welcome #{@user.username}")
      expect(page).to have_content("Log Out")
    end
  end
end
