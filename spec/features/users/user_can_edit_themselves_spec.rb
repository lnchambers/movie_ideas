require "rails_helper"

describe "As a registered User" do
  before :each do
    @user = create(:user)
  end
  describe "when I visit the users/:id/edit page" do
    it "I can edit my username" do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
      visit edit_user_path(@user)

      fill_in "user[username]", with: "Opakawagalaga"
      click_on "Update User"

      expect(page).to have_content("Welcome Opakawagalaga")
    end
  end
end
