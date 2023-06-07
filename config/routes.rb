Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/donations" => "donations#index"
  get "/donations/:id" => "donations#show"
  post "/donations" => "donations#create"
  patch "/donations/:id" => "donations#update"

  get "/payment_infos/:id" => "payment_infos#show"
  post "/payment_infos" => "payment_infos#create"
end
