# Rails.application.routes.draw do
#   devise_for :users
#
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do

  
  resources :items
  resources :profiles, only: :show
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
    root to: 'pages#home'
  

  

 mount Attachinary::Engine => "/attachinary"

end
