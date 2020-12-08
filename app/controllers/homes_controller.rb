class HomesController < ApplicationController
    skip_before_action :authorized, only: [:main]

    def main
        @tesla_s = Car.find_by(make: 'Tesla', model: 'Model S')
        @porsche_taycan = Car.find_by(make: 'Porsche', model: 'Taycan')
        @audi_etron = Car.find_by(make: 'Audi', model: 'E-Tron')
        @kia_soul= Car.find_by(make: 'Kia', model: 'Soul')
        @kona = Car.find(5)
    end
end 