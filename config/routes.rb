Rails.application.routes.draw do
  get 'tag_types/list'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :tag_types
end
