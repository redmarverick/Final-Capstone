Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register' }

  namespace :api do
    devise_scope :user do
      post 'login', to: 'sessions#create'
      post 'register', to: 'registrations#create'
      delete 'logout', to: 'sessions#destroy'
      post 'password/forgot', to: 'passwords#forgot' # This route is for initiating password reset
      put 'password/reset', to: 'passwords#reset'     # This route is for resetting the password
    end
  end

  root 'root#index'
end
