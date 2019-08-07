Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants do
    resources :reviews, only: [:new, :create, :index]
  end


  get "restaurants/:id", to: "restaurants#show"

  resources :reviews, only: [:show]
  # resources :reviews


end
