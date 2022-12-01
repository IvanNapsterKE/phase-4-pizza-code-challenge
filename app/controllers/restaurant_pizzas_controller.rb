class RestaurantPizzasController < ApplicationController

rescue_from ActiveRecord::RacordInvalid, render_record_invalid

def create
 
    restaurant = RestaurantPizza.create!(restaurant_pizza_params)

end

def restaurant_pizza_params

    params.permit(:price, :restaurant_id, :pizza_id)

end
def render_record_invalid(exception)

    render json: { "error": "validation errors"}, status: :not_found
    
end
