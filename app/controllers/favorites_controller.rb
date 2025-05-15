class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
    @cars = Car.all
  end

  def create
    @favorite = Favorite.new
    @favorite.car = @car
    @car = Car.find_by(id: params[:car_id])

    if @favorite.save
      redirect_to car_path(@car), notice: 'Car was successfully added to favorites.'
    else
      render :'cars/show', status: :unprocessable_entity
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path, notice: 'Favorite was successfully removed.'
  end

end
