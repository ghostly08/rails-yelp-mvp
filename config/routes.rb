Rails.application.routes.draw do
  get 'reviews/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [ :update, :destroy ] do
    root to: "restaurants#index"

    resources :reviews, only: [:new] do
    end
  end
end
