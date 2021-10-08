class DebatesController < ApplicationController

  def index
    @user = current_user
    if params[:user_id]
      @debates = @user.debates
      binding.pry
    else
      @debates = Debate.all.where("user_id != ?", @user.id)
      binding.pry
    end
  end

  def new
    @user = current_user
    @debate = Debate.new
  end

  def create
    @user = current_user
    @debate = @user.debates.new(debate_params)
    if @debate.save
      redirect_to user_debates_path(@user)
    else
      render :new
    end
  end

  private

  def debate_params
    params.require(:debate).permit(:title, :body, :user_id)
  end
end