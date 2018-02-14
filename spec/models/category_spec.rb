require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:image) }
    it { should have_many(:movies) }
  end
end
