class EventDate < ApplicationRecord
  belongs_to :calendar_date
  belongs_to :event 
end
