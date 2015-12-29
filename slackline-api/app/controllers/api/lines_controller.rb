class LinesController < ApplicationController
  def index
    @lines = Line.all
  end

  def new
    @user = User.find params[:user_id]
    @line = Line.new
  end

  def create
    @line = current_user.lines.build line_params

    if @line.save
      flash[:notice] = "You've added your line!"
      redirect_to edit_user_path(current_user)
    else
      render :new
    end
  end

  def destroy

  end

  private

    def line_params
      params.require(:line).permit(:brand, :length, :width, :style, :system)
    end

end

