Rails.application.routes.draw do
  get 'menu_pages/Home'
  get 'menu_pages/Help'
  resources :microposts
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "application#hello"
end
