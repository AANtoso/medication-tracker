Rails.application.routes.draw do

  root 'sessions#index'

  get '/register' => 'patients#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get 'auth/google_oauth2/callback' => 'sessions#omniauth'

  resources :prescriptions
  
  resources :providers
  resources :patients

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
