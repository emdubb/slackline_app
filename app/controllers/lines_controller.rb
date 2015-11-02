class LinesController < ApplicationController
  def index
    @lines = Line.where is_active: true
  end
end
