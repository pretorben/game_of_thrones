class CharactersController < ApplicationController

  def new
    @house = house.find(params[:house_id])
    @character = character.new
  end

  def create
    @house = house.find(params[:house_id])
    @character = @house.characters.create(character_params)
    redirect_to house_path(@house)
  end

  def edit
    @house = house.find(params[:house_id])
    @character = character.find(params[:id])
  end

  def update
    @house = house.find(params[:house_id])
    @character = character.find(params[:id])
    @character.update(character_params)
    redirect_to house_path(@house)
  end

  def destroy
    @house = house.find(params[:house_id])
    @character = character.find(params[:id])
    @character.destroy
    redirect_to house_path(@house)
  end

  private

  def character_params
    params.require(:character).permit(:content)
  end

end
