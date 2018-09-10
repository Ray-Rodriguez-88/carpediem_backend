class CalendarDate < ApplicationRecord
  has_many :event_dates
  has_many :events, through: :event_dates
end
