Rails.application.routes.draw do
  resources :product_types
  resources :colors
  resources :mannequins
  resources :product_urls
  resources :products

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
