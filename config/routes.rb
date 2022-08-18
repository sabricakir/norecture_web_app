Rails.application.routes.draw do
  resources :products, :product_urls, :product_types, :colors, :models
  get "/home", to:"home#index"
  get "/store", to:"store#index"
  root 'products#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
