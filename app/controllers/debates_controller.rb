class DebatesController < ApplicationController

  def index
    @user = current_user
    if paramas[:user_id]
      @debates = @user.debates
    else
      @debates = Debate.all
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