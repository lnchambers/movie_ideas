require "rails_helper"

describe "As an Admin" do
  before :each do
    @category = create(:category)
  end
  describe "when I visit the admin/categories/:id/edit page" do
    it "I can edit the name of the category" do
      admin = User.create!(username: "Pass", password: "User", email: "Eman", role: 1)
      visit edit_admin_category_path(@category)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      fill_in "category[name]", with: "Not your average category"
      click_on "Update Category"

      expect(page).to have_content("Not your average category")
    end
  end
end
