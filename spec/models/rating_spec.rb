require 'rails_helper'

RSpec.describe Rating, type: :model do
  describe "Validations" do
    it { should belong_to(:movie) }
    it { should belong_to(:user) }
  end
end
