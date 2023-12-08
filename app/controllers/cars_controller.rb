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
end
