Rails.application.routes.draw do
  get 'coins/index'
  get 'tag_types/list'
  root "coins#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :tag_types
end
