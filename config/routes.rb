Rails.application.routes.draw do




  # registrations/
  # sessions/
  # users/
  devise_for :users

  resources :items do
    # POST /items/:item_id/reviews
    resources :reviews, only: [:new, :create]
  end


  post "users/:user_id/reviews", to: "reviews#create"


  root to: 'pages#home'

  # mount Attachinary::Engine => "/attachinary"
end
