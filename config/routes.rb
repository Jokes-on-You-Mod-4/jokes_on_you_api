Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
  namespace :api do 
    namespace :v1 do 
      get '/emoji', to: 'emoji#show'
=======

  namespace :api do
    namespace :v1 do
      resources :trivia, only: %i[index]
>>>>>>> c1dabd10486217fc0bebb47281d97e769ffd20b3
    end
  end
end
