Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'socks/mysocks', to: 'socks#mysocks'
  resources :socks do
    resources :bookings, only: [:create]
    resources :reviews, only: [:new]
  end
  get 'bookings/myrents', to: 'bookings#myrents'
  resources :bookings, only: [:index, :show]
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
