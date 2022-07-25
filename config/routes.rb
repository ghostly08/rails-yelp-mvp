Rails.application.routes.draw do
  root to: "restaurants#index"
  # get 'reviews/new'
  resources :restaurants, except: [ :update ] do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy] do
  end
end
