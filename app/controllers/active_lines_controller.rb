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
  end

  def edit
    aline = Line.find(params[:id])
    @al_info = aline.active_lines.last
  end

  def update
    if params[:finished] == 'true'
      aline = Line.find(params[:id]).active_lines.last
      aline.finished_at = Time.now
      aline.save
      redirect_to root_path
    else
    aline = ActiveLine.find(params[:id]).line
      if aline.is_active_line?
        aline.active_lines.last.update_attributes(aline_params)
        redirect_to root_path
      else
        aline.deactivate!
        redirect_to edit_user_path(current_user)
      end
    end

  end

  def show
    @posted_line = Line.find(params[:id])
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    redirect_to edit_user_path
  end

  private
  #Implement Strong Params
    def aline_params
      params.require(:active_line).permit(:location, :difficulty, :message, :finished_at)
    end

end
