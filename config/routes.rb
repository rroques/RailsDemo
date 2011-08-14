RemiTest::Application.routes.draw do
  
  resources :users
  resources :tracks
  
  match '/', :to => 'pages#home'
  match '/signup',  :to => 'users#new'
  match '/index', :to => 'pages#home'
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  
  root :to => "pages#home"
  
end
