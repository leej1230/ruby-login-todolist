Rails.application.routes.draw do
  get "/login", to: "sessions#new"
  get "/signup" to: "users#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  root "todos#index"
  resources :todos
end
