class ActiveLinesController < ApplicationController
  def index
    @active_lines = ActiveLine.all
  end

  def create
    line = Line.find(params[:line_id])
    line.activate!
    redirect_to user_path(current_user)
  end
end
