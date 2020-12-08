class CarsController < ApplicationController

    def show
        @car = Car.find(params[:id])
        
        
        
    end

    def make_index 
        @cars = Car.all.map{|car| car.make}.uniq
        @car_logos_first = ["https://car-logos.net/wp-content/uploads/2018/09/audi-logo.jpg", "https://car-logos.net/wp-content/uploads/2018/09/bmw-logo.jpg", "https://car-logos.net/wp-content/uploads/2018/09/chevrolet-logo.jpg", "https://car-logos.net/wp-content/uploads/2018/09/hyundai-logo.jpg", "https://car-logos.net/wp-content/uploads/2018/09/jaguar-logo.jpg"] 
        @car_logos_second = ["https://car-logos.net/wp-content/uploads/2018/09/kia-logo.jpg", "https://car-logos.net/wp-content/uploads/2018/09/nissan-logo.jpg", "https://car-logos.net/wp-content/uploads/2018/09/porsche-logo.jpg", "https://car-logos.net/wp-content/uploads/2018/09/tesla-logo.jpg", "https://car-logos.net/wp-content/uploads/2018/09/volkswagen-logo.jpg"]
    end

    def model_index
        @cars = Car.where(make: params[:make])
    end

    def car_reviews
        @car = Car.find_by(id: params[:car_id])
        
        
    end

    private


    
end