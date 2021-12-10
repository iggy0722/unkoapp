class PoopsController < ApplicationController
  before_action :human_set
  def index
    @poops = @human.poops
  end
  
  def new
    @poop = Poop.new
  end

  def create
    poop = Poop.create(poop_params)
    if poop.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end


  private

  def poop_params
    params.require(:poop).permit(:state_id, :detail, :weight_id, :start_time).merge(user_id: current_user.id, human_id: params[:human_id])
  end

  def human_set
    @human = Human.find(params[:human_id])
  end

end