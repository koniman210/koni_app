class Movie < ApplicationRecord
  validates :movie, presence: true
  validates :url, presence: true
end
