Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :books do
    resources :orders, only: %i[new create]
  end
  get 'profilepage', to: 'users#profile_page'
end
