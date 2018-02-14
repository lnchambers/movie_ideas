require "rails_helper"

describe "As an admin" do
  before :each do
    @category = create(:category)
    @user = create(:user)
  end
  describe "when I visit the categories index" do
    it "I can see all categories" do
      Category.create!(name: "Smokely Oakley", image: "Smokely Oakley's Wokely Jokely")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)

      visit admin_categories_path

      expect(page).to_not have_content("One More Club")
      expect(page).to have_content("The page you were looking for doesn't exist")
    end
  end
end
