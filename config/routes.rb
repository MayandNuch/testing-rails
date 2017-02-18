Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root 'static_pages#home'

  get '/about' => 'static_pages#about'
  get 'users/:id' => 'users#show'
  get '/users' => 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
