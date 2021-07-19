require 'rails_helper'

RSpec.describe 'movies show page' do
  # Story 2
  # Movie Show
  # As a user,
  # When I visit a movie's show page.
  # I see the movie's title, creation year, and genre,
  # and a list of all its actors from youngest to oldest.
  # And I see the average age of all of the movie's actors
  before :each do
    @a24 = Studio.create!(name: "A24 Films", location: "New York City, NY")
    @lionsgate = Studio.create!(name: "Lionsgate Films", location: "Santa Monica, CA")
    @swissarmy = Movie.create!(title: "Swiss Army Man", creation_year: 2016, genre: "Comedy/Drama", studio_id: @a24.id)
    @silverlake = Movie.create!(title: "Under the Silver Lake", creation_year: 2019, genre: "Thriller/Black Comedy", studio_id: @a24.id)
    @knives = Movie.create!(title: "Knives Out", creation_year: 2019, genre: "Mystery", studio_id: @lionsgate.id)
  end

  it 'displays the movie title' do
    visit "/movies/#{@silverlake.id}"

    expect(page).to have_content(@silverlake.title)
    expect(page).to_not have_content(@swissarmy.title)
  end

  it 'displays the movie creation year' do
    visit "/movies/#{@silverlake.id}"

    expect(page).to have_content(@silverlake.creation_year)
    expect(page).to_not have_content(@swissarmy.creation_year)
  end

  it 'displays the movie genre' do
    visit "/movies/#{@silverlake.id}"

    expect(page).to have_content(@silverlake.genre)
    expect(page).to_not have_content(@swissarmy.genre)
  end
end
