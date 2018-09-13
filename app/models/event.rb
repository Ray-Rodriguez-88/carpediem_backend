class Event < ApplicationRecord
  has_many :event_dates
  has_many :calendar_dates, through: :event_dates
  belongs_to :user 
end
