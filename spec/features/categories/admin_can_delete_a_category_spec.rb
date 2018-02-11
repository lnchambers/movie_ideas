require "rails_helper"

describe "As an Admin" do
  before :each do
    @category = create(:category)
  end
  describe "when I visit the categories page" do
    it "I can delete a category" do
      visit categories_path

      expect(page).to have_content(@category.name)

      click_on "Delete"

      expect(page).to_not have_content(@category.name)
    end
  end
end
