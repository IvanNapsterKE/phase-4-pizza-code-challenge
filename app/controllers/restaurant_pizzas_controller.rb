class RestaurantPizzasController < ApplicationController

rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid

    def create
    
        pizza = RestaurantPizza.create!(restaurant_pizza_params).pizza
        render json: pizza, status: :created

    end

    def restaurant_pizza_params

        params.permit(:price, :restaurant_id, :pizza_id)

    end

    private 

    def render_record_invalid(exception)

        render json: { "error": "validation errors"}, status: :not_found
        
    end
end