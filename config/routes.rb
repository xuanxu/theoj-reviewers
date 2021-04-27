Rails.application.routes.draw do
  get '/auth/github/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#auth_failure'
  get '/signout', to: 'sessions#destroy', as: :signout

  root to: 'home#index'
end
