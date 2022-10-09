Rails.application.routes.draw do
  get 'users/new'
  root 'statik_pages#home'
  get 'help' => 'statik_pages#help'
  get 'about' => 'statik_pages#about'
  get 'contacts' => 'statik_pages#contacts'
  get 'signup' => 'users#new'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
