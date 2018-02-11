require "rails_helper"

describe "As an Admin" do
  describe "when I visit the categories/new page" do
    it "I can create a category" do
      visit new_category_path

      fill_in "category[name]", with: "Not your average category"
      click_on "Create Category"

      expect(page).to have_content("Not your average category")
    end
  end
end
