class Studio < ApplicationRecord
  has_many :movies

  def movie_count
    movies.count
  end
end
