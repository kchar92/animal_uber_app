Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # users
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "users/:id" => "users#destroy"

    # animals
    get "/animals" => "animals#index"
    post "/animals" => "animals#create"
    get "/animals/:id" => "animals#show"
    patch "/animals/:id" => "animals#update"
    delete "/animals/:id" => "animals#destroy"

    #sessions
    post "/sessions" => "sessions#create"

    # appointments
    get "/appointments" => "appointments#index"
    post "/appointments" => "appointments#create"
  end
end
