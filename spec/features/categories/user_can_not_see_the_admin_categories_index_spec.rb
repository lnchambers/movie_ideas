require "rails_helper"

describe "As an admin" do
  before :each do
    @category = create(:category)
    @user = create(:user)
  end
  describe "when I visit the categories index" do
    it "I can see all categories" do

      Category.create!(name: "Smokely Oakley", image: "Smokely Oakley's Wokely Jokely")

      visit admin_categories_path

      expect(page).to have_content("One More Club")
      expect(page).to have_content("Smokely Oakley")
    end
  end
end
