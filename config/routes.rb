Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :products
  get 'dashboard/:id', to: 'pages#dashboard', as: :dashboard
end
