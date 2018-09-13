class User < ApplicationRecord
  has_many :events
  has_many :event_dates, through: :events
  has_many :calendar_dates, through: :event_dates

end
