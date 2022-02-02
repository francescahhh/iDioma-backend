Rails.application.routes.draw do
  resources :note_categories
  resources :word_categories
  resources :words
  resources :notes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
