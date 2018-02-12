require 'rails_helper'

RSpec.describe Rating, type: :model do
  describe "Validations" do
    it { should validate_presence_of(:rating) }
    it { should belong_to(:movie) }
    it { should belong_to(:user) }
  end
end
