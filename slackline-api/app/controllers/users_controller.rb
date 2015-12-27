class UsersController < ApplicationController
  #before_action :authenticate, only: [:show]
  #before_action :authorize, only: [:show]
  def new
    @user = User.new
  end

  def show
    @line = Line.new
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @line = Line.new
  end

  def destroy
    @user = current_user
    @user.destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
    # Implement Strong Params
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :skill, :location)
    end
end
