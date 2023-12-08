class CarsController < ApplicationController
  def index
    @cars = Car.all
    render :index
  end

  def create
    @car = Car.create(
      make: params[:make],
      model: params[:model],
      color: params[:color],
      year: params[:year]
    )
    render :show
  end

  def show
    @car = Car.find_by(id: params[:id])
    render :show
  end

  def update
    @car = Car.find_by(id: params[:id])
    @car.update(
      make: params[:make] || @car.make,
      model: params[:model] || @car.model,
      color: params[:color] || @car.color,
      year: params[:year] || @car.year
    )
    render :show
  end

  def destroy
    @car = Car.find_by(id: params[:id])
    @car.destroy
    render json:{message: "Destroyed successfully"}
  end
end
