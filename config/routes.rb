Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :skills do
    resources :experiences, only: [:index, :create, :edit, :update]
  end

  resources :bookings do
    resources :reviews, only: [:create, :edit, :update]
  end
end
