require 'rails_helper'

RSpec.describe Studio do
  describe 'studios index page' do
    # Story 1
    # Studio Index
    # As a user,
    # When I visit the studio index page
    # I see a each studio's name and location
    # And underneath each studio, I see the titles of all of its movies.
    before :each do
      @a24 = Studio.create!(name: "A24 Films", location: "New York City, NY")
      @lionsgate = Studio.create!(name: "Lionsgate Films", location: "Santa Monica, CA")
      @swissarmy = Movie.create!(title: "Swiss Army Man", creation_year: 2016, genre: "Comedy/Drama", studio_id: @a24.id)
      @silverlake = Movie.create!(title: "Under the Silver Lake", creation_year: 2019, genre: "Thriller/Black Comedy", studio_id: @a24.id)
      @knives = Movie.create!(title: "Knives Out", creation_year: 2019, genre: "Mystery", studio_id: @lionsgate.id)
    end

    it 'can see the each studios name and location' do

      visit "/studios"

      expect(page).to have_content(@a24.name)
      expect(page).to have_content(@lionsgate.name)
      expect(page).to have_content(@a24.location)
      expect(page).to have_content(@lionsgate.location)
    end
  end
end
