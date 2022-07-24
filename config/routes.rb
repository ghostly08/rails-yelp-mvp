Rails.application.routes.draw do
  # get 'reviews/new'
  resources :restaurants, except: [ :update, :destroy ] do
    root to: "restaurants#index"

    resources :reviews, only: [:new] do
    end
  end
end
