Tweet4Yu::Application.routes.draw do
  devise_for :users

  resource :main, only: [:index] 
  get :friends_main, to: 'main#friends'
  
  resources :users, only: [:show]
  
  root :to => 'main#index'
  
end
