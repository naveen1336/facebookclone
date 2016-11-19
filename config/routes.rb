Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'sessions#create'
resources :fruits
 get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

get '/signup' => 'users#new'
  post '/users' => 'users#create'
get '/users' => 'users#index'
resources :homes
resources :posts
#get '/home' => 'homes#show'
 
end
