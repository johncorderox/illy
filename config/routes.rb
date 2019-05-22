Rails.application.routes.draw do
  root 'home#index'
  get  '/register'      => 'users#new'
  post '/users'         => 'users#create'
end
