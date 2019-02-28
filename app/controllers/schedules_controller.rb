class SchedulesController < ApplicationController
  def new
    @schedule = Schedule.new
  end

  def create
    Schedule.create(schedule_params)
    redirect_to mypage_path
  end

  private
  def schedule_params
    params.require(:schedule).permit(:name, :date, :place).merge(user_id: current_user.id)
  end
end
