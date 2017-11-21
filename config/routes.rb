# Rails.application.routes.draw do
#   devise_for :users
#
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
    root to: 'pages#home'
=======
  devise_for :users
  resources :items

  root to: 'pages#home'

  # mount Attachinary::Engine => "/attachinary"
>>>>>>> 7dc05cb1c233b5bdcca069b7093f77e3f3eb3809
end
