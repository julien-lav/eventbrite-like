Rails.application.routes.draw do

  get 'sessions/new'

  root 'users#new'

  #users
  get '/signup', to:'users#new'
  post '/signup', to:'users#create'
  #sessions
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'


  resources :users
  resources :events 
 
 end


