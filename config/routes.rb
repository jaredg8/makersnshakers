Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'


  resources :profiles, only: :show
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :items do
    # POST /items/:item_id/reviews
    resources :reviews, only: [:new, :create]
  end

  resources :items do
    collection do
      get 'category', to: "items#category"
    end
  end

  resources :transactions, only: [:new, :create, :show]

  post "users/:user_id/reviews", to: "reviews#create"

end
