Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  #get 'users/index'

  #get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'toppages/index'

  root to:'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks, except: [:index]
end
