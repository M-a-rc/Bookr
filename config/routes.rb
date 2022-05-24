Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :books
  resources :orders, only: %i[index show new create destroy]
end
