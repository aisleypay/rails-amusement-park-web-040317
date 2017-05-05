Rails.application.routes.draw do

  root 'welcome#index'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  post '/rides/create' => 'rides#create'

  resources :users, except:[:destroy]
  resources :attractions, except:[:destroy]

end
