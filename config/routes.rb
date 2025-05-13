Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end

  # In more details, the resources method is a shorthand for defining RESTful routes :
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
end
