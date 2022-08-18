Rails.application.routes.draw do
  resources :products, :product_urls, :product_types, :colors, :models
  root 'products#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
