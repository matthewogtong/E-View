class Car < ApplicationRecord
    has_many :reviews
    has_many :favorites
    has_many :users, through: :reviews
    # has_many :users, through: :favorites

    def make_plus_model
        "#{self.make} - #{self.model}"
    end

    def all_makes
        cars = Car.all
        @car_makes = cars.map { |car| car.make}
    end
    
end