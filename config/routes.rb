Rails.application.routes.draw do
  resources :profiles, only: :show

  devise_for :users
  resources :items

  root to: 'pages#home'

  # mount Attachinary::Engine => "/attachinary"
end
