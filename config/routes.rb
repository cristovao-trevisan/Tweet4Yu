Tweet4Yu::Application.routes.draw do
  devise_for :users

  
  root :to => 'main#index'
  
  
  mount JasmineRails::Engine => "/specs" if defined?(JasmineRails)
  
end
