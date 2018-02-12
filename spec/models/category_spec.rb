require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "Validations" do
    it { should validate_presence_of :name}
    it { should have_many(:movie_categories) }
    it { should have_many(:movies).through(:movie_categories) }
  end
end
