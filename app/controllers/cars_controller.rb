class CarsController < ApplicationController
  def index
    @cars = Car.all
    render :index
  end
end
