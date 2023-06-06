Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/donations" => "donations#index"
  get "/donations/:id" => "donations#show"
end
