Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  get "/cafes", to: "cafes#index"
  get "/cafes/:id", to: "cafes#show"
end