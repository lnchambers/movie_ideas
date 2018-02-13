require 'rails_helper'

describe "As a registered User" do
  describe "when I visit the movie/:id page" do
    before :each do
      @movie = create(:movie)
      @user = create(:user)
    end
    it "I can see a single movie that I created" do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
      visit movie_path(@movie)
      
      expect(page).to have_content(@movie.title)
      expect(page).to have_content(@movie.description)
      expect(page).to have_content(@movie.total_rating)
    end
  end
end
