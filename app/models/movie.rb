class Movie < ApplicationRecord
  belongs_to :genre
  belongs_to :country
  belongs_to :director
  belongs_to :scriptwriter
end
