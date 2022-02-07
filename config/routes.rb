Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do
      resources :users, only: [:create]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
  resources :note_categories
  resources :word_categories
  resources :words
  resources :notes

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
      end
   end
end
