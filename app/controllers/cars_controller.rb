class CarsController < ApplicationController

    def show
        @car = Car.find(params[:id])
    end

    def make_index 
        @cars = Car.all
    end

    def model_index
        @cars = Car.all
    end

end