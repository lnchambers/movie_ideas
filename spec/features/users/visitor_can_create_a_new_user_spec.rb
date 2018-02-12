require "rails_helper"

describe "As a visitor" do
  describe "when I visit the root page" do
    it "I can sign up to be a new user" do
      visit root_path

      click_on "Sign up"

      expect(current_path).to eq(new_user_path)
    end
  end
end
