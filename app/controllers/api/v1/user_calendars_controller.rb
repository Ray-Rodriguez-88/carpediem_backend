class Api::V1::UserCalendarsController < ApplicationController
  def index
    user_calendars = UserCalendar.all
    render json: user_calendars
  end

  def update
    @user_calendar.update(user_calendar_params)
    if @user_calendar.save
      render json: @user_calendar, status: :accepted
    else
      render json: { errors: @user_calendar.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def user_calendar_params
    params.permit(:user_id,:event_id)
  end

  def find_user_calendar
    @user_calendar = UserCalendar.find(params[:id])
  end
end
end
