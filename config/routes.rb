Rails.application.routes.draw do
  root 'home#index'

  get 'sessions/new'=> 'sessions#new'
end
