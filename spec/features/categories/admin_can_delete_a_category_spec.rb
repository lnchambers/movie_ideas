require "rails_helper"

describe "As an Admin" do
  before :each do
    @category = create(:category)
  end
  describe "when I visit the admin/categories page" do
    it "I can delete a category" do
      admin = User.create!(username: "Pass", password: "User", email: "Eman", role: 1)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit admin_categories_path

      expect(page).to have_content(@category.name)

      click_on "Delete"

      expect(page).to_not have_content(@category.name)
    end
  end
end
