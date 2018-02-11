require "rails_helper"

describe "As a registered User" do
  before :each do
    @category = create(:category)
  end
  describe "when I visit the categories/:id page" do
    it "I can see a single category and all the movies attached to that category" do
      visit category_path(@category)

      expect(page).to have_content("#{@category.name}")
    end
  end
end
