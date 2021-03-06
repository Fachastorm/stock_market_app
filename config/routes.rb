Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'

  resources :users do 
    resources :watchlists
  end
  
  resources :users  do 
    resources :positions, only: [:index, :create, :destroy]
  end

  get 'portfolio', to: 'users#portfolio'

  get 'search_stocks',  to: 'stocks#search'


  
  
  
end
