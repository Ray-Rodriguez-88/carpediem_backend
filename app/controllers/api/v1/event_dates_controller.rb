class Api::V1::EventDatesController < ApplicationController

  def index
    event_dates = EventDate.all
    render json: event_dates
  end

  def update
    @event_date.update(event_date_params)
    if @event_date.save
      render json: @event_date, status: :accepted
    else
      render json: { errors: @event_date.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def event_date_params
    params.permit(:event_id, :calendar_date_id)
  end

  def find_event_date
    @event_date = EventDate.find(params[:id])
  end

end
