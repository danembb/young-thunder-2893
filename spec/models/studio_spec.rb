require 'rails_helper'

RSpec.describe Studio do
  describe 'relationships' do
    it { should have_many(:movies) }
  end

  before :each do
    @a24 = Studio.create!(name: "A24 Films", location: "New York City, NY")
    @lionsgate = Studio.create!(name: "Lionsgate Films", location: "Santa Monica, CA")
    @swissarmy = Movie.create!(title: "Swiss Army Man", creation_year: 2016, genre: "Comedy/Drama", studio_id: @a24.id)
    @silverlake = Movie.create!(title: "Under the Silver Lake", creation_year: 2019, genre: "Thriller/Black Comedy", studio_id: @a24.id)
    @knives = Movie.create!(title: "Knives Out", creation_year: 2019, genre: "Mystery", studio_id: @lionsgate.id)
  end

    it 'returns movie count in a studio' do
      expect(@a24.movie_count).to eq(2)
      expect(@lionsgate.movie_count).to eq(1)
    end

  describe 'user stories' do
    # Story 1
    # Studio Index
    # As a user,
    # When I visit the studio index page
    # I see a each studio's name and location
    # And underneath each studio, I see the titles of all of its movies.
  end
end
