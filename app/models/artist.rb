class Artist < ApplicationRecord
  #dane, 7.19: Should this be can_be_in_many instead of has_many?
  has_many :movies
end
