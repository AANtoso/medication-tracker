Rails.application.routes.draw do
  get 'sessions/index'
  get 'sessions/create'
  get 'sessions/new'
  get 'sessions/edit'
  get 'sessions/show'
  get 'sessions/update'
  get 'sessions/destroy'
  resources :providers
  resources :medications
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
