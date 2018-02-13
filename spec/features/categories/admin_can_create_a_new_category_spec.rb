require "rails_helper"

describe "As an Admin" do
  describe "when I visit the categories/new page" do
    it "I can create a category" do
      admin = User.create!(username: "Pass", password: "User", email: "Eman", role: 1)

      visit new_admin_category_path

      fill_in "category[name]", with: "Not your average category"
      fill_in "category[image]", with: "This is your average image."
      click_on "Create Category"

      expect(page).to have_content("Not your average category")
    end
  end
end
