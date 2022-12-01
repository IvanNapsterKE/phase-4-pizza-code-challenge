class RestaurantsController < ApplicationController\
rescue_from ActiveRecord::RacordNotFound, with::record_not_found_response


    

    def show

        restaurant = find_restaurant
        render json:restaurant, serializer : RestaurantWithPizzaSerializer
    end

    def destroy
        find_restaurant.destroy
        head:no_content
    
    end

    def find_restaurant
        Restaurant.find(params[:id])

    end

    private
    def record_not_found_response(exception)
    
        render json:{ "error": "Restaurant not found"}, status: :not_found
    
    end



end
