Rails.application.routes.draw do
  resources :microposts
  resources :users
  get 'menu_pages/Home'
  get 'menu_pages/Help'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "application#hello"
end
