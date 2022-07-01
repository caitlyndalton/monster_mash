Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/campaigns" => "campaigns#index"
  post "/campaigns" => "campaigns#create"
  get "/campaigns/:id" => "campaigns#show"
  patch "/campaigns/:id" => "campaigns#update"
  delete "campaigns/:id" => "campaigns#destroy"

  get "/creatures" => "creatures#index"
  post "/creatures" => "creatures#create"
  get "/creatures/:id" => "creatures#show"
  patch "/creatures/:id" => "creatures#update"
  delete "/creatures/:id" => "creatures#destroy"

  get "/npcs" => "npcs#index"
  post "/npcs" => "npcs#create"
  get "/npcs/:id" => "npcs#show"
  patch "/npcs/:id" => "npcs#update"
  delete "/npcs/:id" => "npcs#destroy"
end
