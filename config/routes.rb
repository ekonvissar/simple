Rails.application.routes.draw do
  root 'statik_pages#home'
  get 'statik_pages/home'
  get 'statik_pages/help'
  get 'statik_pages/about'
  get 'statik_pages/contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
