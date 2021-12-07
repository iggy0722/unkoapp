class PoopsController < ApplicationController
  before_action :human_set
  def index
    
  end
  
  def new
    @poop = Poop.new
  end
  
  def create
  end
end

private
  def human_set
    @human= Human.find(params[:human_id])
  end
end