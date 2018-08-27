Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :posts
  
  
  root to: "posts#index"
  
  get "/users/:id", to: 'users#show'
  
 
end
