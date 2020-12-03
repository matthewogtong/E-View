class HomesController < ApplicationController
    skip_before_action :authorized, only: [:main]

    def main
        
    end
end