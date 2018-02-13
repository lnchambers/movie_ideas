require "rails_helper"

describe "As a registered User" do
  before :each do
    @category = create(:category)
  end
  describe "when I visit the categories index" do
    it "I can see all categories" do
      Category.create!(name: "Smokely Oakley", image: "Smokely Oakley's Wokely Jokely")

      visit categories_path

      expect(page).to have_content("One More Club")
      expect(page).to have_content("Smokely Oakley")
    end
  end
end
