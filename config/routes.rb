Rails.application.routes.draw do

  root 'sessions#index'

  get '/register' => 'patients#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get 'auth/google_oauth2/callback' => 'sessions#omniauth'

  get '/prescriptions/called_in', to: 'prescriptions#called_in'

  resources :prescriptions
  resources :providers
  resources :patients

  resources :patients do
    resources :providers, only: [:new, :create, :index, :show, :edit]
  end

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
