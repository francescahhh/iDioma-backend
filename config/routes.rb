Rails.application.routes.draw do
  resources :note_categories, only: [:index, :show, :destroy]
  resources :word_categories, only: [:index, :show, :destroy]
  resources :words, only: [:index, :show, :destroy]
  resources :notes, only: [:index, :show, :destroy]
  
  namespace :api do 
    namespace :v1 do
      resources :users, only: [:create]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
      end
   end
end
