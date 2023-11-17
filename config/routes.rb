Rails.application.routes.draw do
  resources :vendas
  resources :produtos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "vendas#index"
end
