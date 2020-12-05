class CarsController < ApplicationController

    def show
        @car = Car.find(params[:id])
        
    end

    def make_index 
        @cars = Car.all.map{|car| car.make}.uniq
    end

    def model_index
        @cars = Car.where(make: params[:make])
    end

    def car_reviews
        @car = Car.find_by(id: params[:car_id])
    end

    private


    
end