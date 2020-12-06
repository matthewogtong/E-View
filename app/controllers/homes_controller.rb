class HomesController < ApplicationController
    skip_before_action :authorized, only: [:main]

    def main
        @car_first = Car.first
        @car_second = Car.second
        @car_third= Car.third
        @car_fourth = Car.fourth
    end
end