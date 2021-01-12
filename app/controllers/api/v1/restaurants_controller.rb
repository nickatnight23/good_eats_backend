
    class Api::V1::RestaurantsController < ApplicationController

        def index
            @restaurants = Restaurant.all
         render json: @restaurants
        end
    
    
        def create
            
            @restaurant = Restaurant.new(restaurant_params)
            if @restaurant.save
                render json: @restaurant
            else
                render json: {error:'error creating Restaurant'}
            end
        end
    
        def show 
            @restaurant= Restaurant.find(params[:id])
            if @restaurant.present?
            render json: @restaurant
            else
                render json: {error:'error showing Restaurant'}
        end
    end
        
        def destroy
            @restaurant= Restaurant.find(params[:id])
            @restaurant.destroy
    
        end
    
        private
    
        def restaurant_params
            params.require(:restaurant).permit(:name, :description)
        end
    
    end

