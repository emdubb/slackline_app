class LinesController < ApplicationController
  def index
    #@user = User.find params[:user_id]
    #@lines = @user.lines
    @lines = Line.all
  end

  def new
    @user = User.find params[:user_id]
    @line = Line.new
  end

  def create
    @user = User.find params[:user_id]
    @line = user.lines.build line_params

    if @line.save
      flash[:notice] = "You've added your line!"
      redirect_to user_path(@user_id)
    else
      render :new
    end
  end

end

