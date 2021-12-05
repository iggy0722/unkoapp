class HumansController < ApplicationController

  def index
    @humans = Human.all
  end

  def new
    @human = Human.new
  end

  def create
    Human.create(human_parameter)
    redirect_to root_path
  end

end
