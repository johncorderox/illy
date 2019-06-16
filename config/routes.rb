Rails.application.routes.draw do

  get 'etc/welcome'
  get 'rubys/index'
  get 'rubys/create'
  get 'rubys/new'
  get 'rubys/edit'
  get 'rubys/update'
  get 'rubys/destroy'

  root 'home#index'

  get '/edit/:id'       => 'users#edit'
  get  '/register'      => 'users#new'
  post '/users'         => 'users#create'
  patch '/edit/:id'     => 'users#update'
  post '/sessions/new'  => 'sessions#new'
  delete '/logout'      => 'sessions#destroy'

  # Welcome
  get '/welcome' => 'etc#welcome'

  resources :courses




end
