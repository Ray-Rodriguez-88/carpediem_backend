class Api::V1::EventDatesController < ApplicationController

  def index
    event_dates = EventDate.all
    render json: event_dates
  end 
end
