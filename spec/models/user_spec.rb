require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:password) }
    it { should have_many(:ratings) }
  end

  describe "Roles" do
    it "can be created as an admin" do
      admin = User.create!(username: "Pass", password: "User", email: "Eman", role: 1)

      expect(admin.role).to eq("admin")
      expect(admin.admin?).to be_truthy
    end

    it "can be created as a regular user" do
      user = User.create!(username: "Pass", password: "User", email: "Eman", role: 0)

      expect(user.role).to eq("default")
      expect(user.default?).to be_truthy
    end

    it "will be defaulted as a regular user" do
      user = User.create!(username: "Pass", password: "User", email: "Eman")

      expect(user.role).to eq("default")
      expect(user.default?).to be_truthy
    end
  end
end
