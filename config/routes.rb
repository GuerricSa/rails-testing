Rails.application.routes.draw do
  get 'products/index'
  devise_for :users
  root to: "products#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :products, only: %i[new create]

  # Defines the root path route ("/")
  # root "articles#index"
end
