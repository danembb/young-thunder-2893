class Movie < ApplicationRecord
  # dane, 7.19: still not quite certain what touch is doing here other than modifying a default value of false to be true...
  belongs_to :studio, touch: true
end
