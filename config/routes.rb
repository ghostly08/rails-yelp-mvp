Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [ :update, :destroy ]

  # resources :restaurants do
  #   resources :restaurants, only: [ :new, :create ]
  # end


end
