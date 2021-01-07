class Api::V1::LocationController < ApplicationController
    before_action :set_restaurant
    def index
      @location=  @restaurant.locations
      render json : @locations
    
    end


    def show 
        @location = Location.find(params[:id])
        render jsob :@location
       
    end

    def create
        @location = @location.restaurants.new

    end
    
    def destroy
      
    end

    private

    def set_restaurant
        @restaurant= Restaurant.find(params[:location_id])

    end


    def location_params
        params.require(:location).permit(:city, :state, :location_id)
    end

end


