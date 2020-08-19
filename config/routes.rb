Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  match '/users/:id', to: 'users#show', via: 'get'
  # devise_for :users, :path_prefix => 'd'
  # resources :users, :only =>[:show]

  root to: 'application#home'

  resources :tracklists do 
    resources :songs 
  end
  resources :festivals 
  resources :artists 
  put '/tracklists/:id/songs/:id/verify', to: 'songs#verify', as: 'verify'
  put '/tracklist/:id/like', to: 'tracklists#like', as: 'like'
  resources :users, :only => [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
