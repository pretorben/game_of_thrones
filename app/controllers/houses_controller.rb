class HousesController < ApplicationController

  def index
    @houses = house.all
  end

  def show
    @house = house.find(params[:id])
  end

  def new
    @house = house.new
  end

  def create
    @house = house.create!(house_params)
    redirect_to house_path(@house)
  end

  def edit
    @house = house.find(params[:id])
  end

  def update
    @house = house.find(params[:id])
    @house.update(house_params)
    redirect_to house_path(@house)
  end

  def destroy
    @house = house.find(params[:id])
    @house.destroy
    redirect_to houses_path
  end

  private

  def house_params
    params.require(:house).permit(:title, :content)
  end
end
