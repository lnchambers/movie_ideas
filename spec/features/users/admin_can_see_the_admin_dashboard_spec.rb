require "rails_helper"

describe "As an Admin" do
  describe "when I visit the admin/dashboard page" do
    it "I can create an image" do
      admin = User.new(username: "Opakawagalaga", email: "Bwing", password: "#notmypassword", role: 1)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)
      allow_any_instance_of(Admin::BaseController).to receive(:current_user).and_return(admin)
      visit movies_path

      click_on "Admin Dashboard"

      expect(current_path).to eq(admin_dashboard_path)

      fill_in "image[url]", with: "#notmypassword"
      click_on "Create Image"

      expect(Image.all.count).to eq(1)
    end
  end
end
