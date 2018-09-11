class Api::V1::CalendarDatesController < ApplicationController

  def index
    calendar_dates = CalendarDate.all
    render json: calendar_dates
  end

  def update
    @calendar_date.update(calendar_date_params)
    if @calendar_date.save
      render json: @calendar_date, status: :accepted
    else
      render json: { errors: @calendar_date.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def calendar_date_params
    params.permit(:date)
  end

  def find_calendar_date
    @calendar_date = CalendarDate.find(params[:id])
  end


  # strftime("%A, %B %e, %Y, %l:%M %P")
end
