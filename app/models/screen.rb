class Screen < ApplicationRecord
  has_many :shows
  has_many :movies

  validates :screen_name, :seat_capacity, presence: true
end
