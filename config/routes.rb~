RemiTest::Application.routes.draw do
  
  resources :users
  resources :tracks
  resources :sessions, :only => [:new, :create, :destroy]
  
  match '/', :to => 'pages#home'
  match '/index', :to => 'pages#home'
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  match '/signup',  :to => 'users#new'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  
  root :to => "pages#home"
  
end
