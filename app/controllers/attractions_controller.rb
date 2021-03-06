class AttractionsController < ApplicationController
before_action :logged_in?

  def index
    @attractions = Attraction.all
    @user = User.find_by(id: session[:user_id])
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
    redirect_to attraction_path(@attraction)
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])
    if @attraction.save
      @attraction.update(attraction_params)
      redirect_to attraction_path
    else
      redirect_to edit_attraction_path
    end
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :nausea_rating, :happiness_rating, :tickets)
  end
end
