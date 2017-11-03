Rails.application.routes.draw do

  root 'users#new'

  #users
  get '/signup', to:'users#new'
  post '/signup', to:'users#create'

  resources :users
  resources :events 
 
 end


