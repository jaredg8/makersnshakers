Rails.application.routes.draw do
  devise_for :users
  resources :items

  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"
end
