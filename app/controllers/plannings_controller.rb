class PlanningsController < ApplicationController
  def new

  end

  def create
    @planning = current_user.plannings.new(planning_params)
    if @planning.save
      flash[:notice] = 'Successfully created planning.'
      redirect_to plannings_path
    else
      render :new
    end
  end

  def show
  end

  private

  def planning_params
    params.require(:planning).permit(:user, bookings_attributes: [:id, :slot, :speaker_id, :_destroy])
  end

end
