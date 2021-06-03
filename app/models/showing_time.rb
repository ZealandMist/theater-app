class ShowingTime < ApplicationRecord
  belongs_to :movie
  belongs_to :screen
  has_many :purchases

  validates :movie_id, :screen_id, :start_time, presence: true
end
