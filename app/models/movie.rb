class Movie < ApplicationRecord
  has_many :showing_times
  
  validates :title, :genre, :rating, :movie_length, presence: true
end
