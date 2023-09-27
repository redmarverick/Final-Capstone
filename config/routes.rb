Rails.application.routes.draw do
  # devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register' }

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  }, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :reservations, only: [:index, :create]
  

  root 'root#index'
end
