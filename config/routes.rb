Rails.application.routes.draw do
  root to: "restaurants#index"
  # get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end

  resources :reviews, only: [:show, :edit, :update, :destroy] do
  end
end
