class Signup < ApplicationRecord
  belongs_to :camper
  belongs_to :activity

  validates :time, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 23 }

  # must have a time between 0 and 23 (referring to the hour of day for the activity)
end
