require "rails_helper"

describe "As an Admin" do
  before :each do
    @category = create(:category)
  end
  describe "when I visit the categories/:id/edit page" do
    it "I can edit the name of the category" do
      visit edit_category_path(@category)

      fill_in "category[name]", with: "Not your average category"
      click_on "Update Category"

      expect(page).to have_content("Not your average category")
    end
  end
end
