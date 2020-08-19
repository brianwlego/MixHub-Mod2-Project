Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  
  root to: 'application#home'

  resources :tracklists do 
    resources :songs 
  end
  resources :festivals 
  resources :artists 
  resources :users, only: [:show]
  put '/tracklists/:id/songs/:id/verify', to: 'songs#add_verify', as: 'verify'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
