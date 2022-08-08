Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"
  get 'dashboard/:id', to: 'pages#dashboard', as: :dashboard
  resources :products do
    resources :purchases, only: [ :new, :create ]
  end
end
