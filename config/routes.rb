Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :skills do
    resources :experiences, only: [:create, :update]
  end

  resources :sport, only: [:create, :destroy]

end
