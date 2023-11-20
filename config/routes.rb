Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :produtos
  resources :itens
  resources :vendas
  # Defines the root path route ("/")
  root "vendas#index"
end
