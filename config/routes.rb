Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'


  resources :profiles, only: :show
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :items do

    resources :transactions, only: [:new, :create]
    resources :reviews, only: [:new, :create]
    collection do
      get 'category', to: "items#category"
    end
  end


  resources :transactions, only: :show do
      resources :reviews, only: [:new, :create]
  end

  post "users/:user_id/reviews", to: "reviews#create"

end
