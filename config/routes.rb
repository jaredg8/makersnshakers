Rails.application.routes.draw do
  get 'reviews/review'

  get 'reviews/show'

  devise_for :users
  resources :items

  root to: 'pages#home'

  # mount Attachinary::Engine => "/attachinary"
end
