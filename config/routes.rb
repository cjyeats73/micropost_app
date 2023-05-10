Rails.application.routes.draw do
  resources :micropost_tags
  resources :tags
  resources :categories
  resources :microposts
  resources :users
  resources :following
  resources :followers
  resources :relationships
  get 'menu_pages/Home'
  get 'menu_pages/Help'
  get 'menu_pages/About'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
  resources :users do
    member do
      get :following, :followers
    end
  end
end
