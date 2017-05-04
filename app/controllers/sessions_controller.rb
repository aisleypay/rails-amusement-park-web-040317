class SessionsController < ApplicationController

  def new

  end

  def create
    binding.pry
    user = User.find_by(name: params[:name])
    if !user.nil?
      session[:user_id] = user.id
      redirect_to user_path
    else
      render :new
    end
  end

  def destroy
    session.delete :name
    redirect_to '/logout'
  end
end
