class HumansController < ApplicationController

  def index
    @humans = Human.all
  end

  def new
    @human = Human.new
    binding.pry
  end

  def create
    @human = Human.create(human_params)
    if @human.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def human_params
    params.permit(:name,:type_id).merge(user_id: current_user.id)
  end

end
