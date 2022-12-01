class PizzasController < ApplicationController

    def index
    # GET /pizzas
        render json: Pizza.all
    end

end
