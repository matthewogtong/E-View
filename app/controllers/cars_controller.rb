class CarsController < ApplicationController

    def show
        @car = Car.find(params[:id])
    end

    def make_index 
        @cars = Car.all.map{|car| car.make}.uniq
    end

    def model_index
        @car_make = Car.find(params[:make])
        @cars = Car.all
    end

    private

    def car_params
        params.require(:car).permit(:make, :model, :rating, :description)
    end

    
end