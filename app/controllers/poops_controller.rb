class PoopsController < ApplicationController

  def index
    
  end
  
  def new
    @poop = Poop.new
  end

  def create
    @poop = Poop.create(poop_params)
    @poop.save!
    redirect_to root_path
  end


  private

  def poop_params
    params.require(:poop).permit(:state_id, :detail, :weight_id, :start_time).merge(user_id: current_user.id, human_id: params[:human_id])
  end
end