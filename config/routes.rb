Rails.application.routes.draw do
  root to: "restaurants#index"
  # get 'reviews/new'
  resources :restaurants, except: [ :update, :destroy ] do
    resources :reviews, only: [:new, :create] do
    end
  end
end
