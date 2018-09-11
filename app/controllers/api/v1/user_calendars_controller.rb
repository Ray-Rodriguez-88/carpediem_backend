class Api::V1::UserCalendarsController < ApplicationController
  def index
    user_calendars = UserCalendar.all
    render json: user_calendars
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def user_params
    params.permit(:name,:email, :username)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
end
