Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :trivia, only: %i[index]
      resources :jokes, only: %i[index]
      get '/emoji', to: 'emoji#show'
    end
  end
end
