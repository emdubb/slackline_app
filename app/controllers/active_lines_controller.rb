class ActiveLinesController < ApplicationController
  def index
    @active_lines = ActiveLine.all
  end

  def create
    aline = Line.find(params[:line_id])
    aline.activate!
    redirect_to user_path(current_user)
  end

  def update
    aline = Line.find(params[:id])
    aline.deactivate!
    redirect_to user_path(current_user)
  end
end
