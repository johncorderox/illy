Rails.application.routes.draw do
  root 'home#index'
  
  get '/edit/:id'       => 'users#edit'
  get  '/register'      => 'users#new'
  post '/sessions/new'  => 'sessions#new'
  delete '/logout'      => 'sessions#destroy'

end
