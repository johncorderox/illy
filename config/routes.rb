Rails.application.routes.draw do
  root 'home#index'
  get  '/register'      => 'users#new'
  post '/sessions/new'  => 'sessions#new'
end
