class HumansController < ApplicationController
  before_action :set_human, only: [:show , :edit , :update, :destroy]
  before_action :authenticate_user!
  before_action :move_to_index,only: [:new ,:create ,:show , :edit , :update, :destroy]
  def index
    user = current_user
    @humans = user.humans
  end

  def new
    @human = Human.new
  end

  def create
    @human = Human.create(human_parameter)
    if @human.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @human.update(human_params)
      redirect_to human_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @human.destroy
    redirect_to humans_path, notice:"削除しました"
  end



  private
  def human_parameter
    params.permit(:name,:type_id).merge(user_id: current_user.id)
  end

  def human_params
    params.require(:human).permit(:name,:type_id).merge(user_id: current_user.id)
  end

  def set_human
    @human = Human.find(params[:id])
  end

  def move_to_index
    if authenticate_user!
    redirect_to action: :index unless current_user.id == @human.user.id
    end
  end

end
