Rails.application.routes.draw do
 

  resources :pizzas, only: [:index]
  resources :restaurant_pizzas, only: [:create]
  resources :restaurants, only: [:index, :show, :destroy]




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
