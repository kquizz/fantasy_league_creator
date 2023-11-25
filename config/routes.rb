Rails.application.routes.draw do
  resources :contestants
  resources :events
  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'
  root :to => 'events#index'
  resources :users

get 'login' => 'user_sessions#new', :as => :login
post 'login' => "user_sessions#create"
get 'logout' => 'user_sessions#destroy', :as => :logout
post 'logout' => 'user_sessions#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
