Rails.application.routes.draw do
  devise_for :users
  root to: "bags#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bags do
    resources :reviews, except: [:destroy]
    resources :bookings, except: [:destroy, :index]
  end

  resources :reviews, only: [:destroy]
  resources :bookings, only: [:destroy, :index]
end
