Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :products, except: :destroy
  # Defines the root path route ("/")
  # root "articles#index"
end
