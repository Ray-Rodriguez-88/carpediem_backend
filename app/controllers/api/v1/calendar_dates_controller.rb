class Api::V1::CalendarDatesController < ApplicationController

  def index
    calendar_dates = CalendarDate.all
    render json: calendar_dates
  end 


  # strftime("%A, %B %e, %Y, %l:%M %P")
end
