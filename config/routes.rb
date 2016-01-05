Rails.application.routes.draw do
  get 'sessions/new'
  get 'signup'  => 'users#new'
  root 'static_pages#home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'login'  => 'sessions#new'
  post 'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  patch 'update' => 'users#update' 
  resources :users

end
