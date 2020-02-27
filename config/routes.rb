Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :terraces  do
    resources :bookings, except: :show
  end
  resources :bookings, only: :show do
    collection do
      get 'list'
    end
  end
end
