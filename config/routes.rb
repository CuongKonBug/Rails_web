Rails.application.routes.draw do

  root "truyens#index"
  

  get     "login"    => "sessions#new"
  post    "login"    => "sessions#create"
  delete  "logout"   => "sessions#destroy"
  resources :truyens do   resources :comments
  end
  resources :users
  resources :admins
  resources :danhmucs
  resources :truyens
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
