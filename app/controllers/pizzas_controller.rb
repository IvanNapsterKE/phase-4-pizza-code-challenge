class PizzasController < ApplicationController

    def index
    
        render json:Restaurant.all
        end

end
