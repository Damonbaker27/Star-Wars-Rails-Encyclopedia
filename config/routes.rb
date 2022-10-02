Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

  resources :starships
  resources :characters
  resources :homeworlds
  resources :films
  resources :races
  # get "characters/" to: 'characters/index' as: character_path
  # get "starships/index"
  get "races/index", to: "races#index"
  # get "homeworlds/index"
  # get "films/index"
end
