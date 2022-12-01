class RestaurantsController < ApplicationController\
rescue_from ActiveRecord::RacordNotFound


    def index
    
    render json:Restaurant.all
    end

    def show

        restaurant = Restaurant.find(params[:id])
        render json:restaurant, Serializer : RestaurantWithPizzaSerializer
    end


end
