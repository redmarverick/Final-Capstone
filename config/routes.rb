Rails.application.routes.draw do
  get '/current_user', to: 'current_user#index'
  # devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register' }

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  }, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :reservations, only: [:index, :create, :show, :update, :destroy]
  resources :cars, only: [:index, :show, :create, :update, :destroy]

  root 'root#index' 
end
