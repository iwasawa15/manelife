class SchedulesController < ApplicationController

  def index
    @schedule = Schedule.new
    @schedules = current_user.schedules
  end

  def create
    Schedule.create(schedule_params)
    redirect_to action: :index
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    schedule = Schedule.find(params[:id])
    schedule.update(schedule_params)
    redirect_to action: :index
  end

  private
  def schedule_params
    params.require(:schedule).permit(:name, :date, :place).merge(user_id: current_user.id)
  end
end
