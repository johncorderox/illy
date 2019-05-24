Rails.application.routes.draw do
  root 'home#index'

  get '/edit/:id'       => 'users#edit'
  get  '/register'      => 'users#new'
  post '/users'         => 'users#create'
  patch '/edit/:id'     => 'users#update'
  post '/sessions/new'  => 'sessions#new'
  delete '/logout'      => 'sessions#destroy'
  get '/:id'            => 'users#show'

end
