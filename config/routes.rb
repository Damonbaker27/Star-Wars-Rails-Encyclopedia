Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

  resources :starships
  resources :characters do
    collection do
      get "search"
    end
  end

  resources :homeworlds do
    collection do
      get "search"
    end
  end

  resources :films
  get "about/index"
end
