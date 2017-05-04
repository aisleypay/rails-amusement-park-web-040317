class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def show
    # binding.pry
    @user = User.find_by_id(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :happiness, :nausea, :height, :tickets, :admin, :password)
  end
end
