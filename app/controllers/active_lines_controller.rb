class ActiveLinesController < ApplicationController
  def index
    @active_lines = ActiveLine.all
  end

  def new
    @active = ActiveLine.new
  end

  def create
    aline = Line.find(params[:line_id])
    aline.activate!
    redirect_to edit_active_line_path(params[:line_id])
    #redirect_to edit_user_path(current_user)
  end

  def edit
    aline = Line.find(params[:id])
    @al_info = aline.active_lines.last
  end

  def update
    aline = Line.find(params[:id])
    #@al_info = aline.active_lines.last
    #binding.pry
    aline.deactivate!
    redirect_to edit_user_path(current_user)
  end

  private
  #Implement Strong Params
  def aline_params
    params.require(:active_line).permit(:location, :difficulty, :message)
  end
end
