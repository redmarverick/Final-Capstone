Rails.application.routes.draw do
  # devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register' }

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  }

  root 'root#index'
end
