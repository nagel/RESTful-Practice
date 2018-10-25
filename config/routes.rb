Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get "/person" => "people#index"
    get "/person/:id" => "people#show"
    post "/person" => "people#create"
    patch "/person/:id" => "people#update"
    delete "/person/:id" => "people#delete"

    post "/user" => "users#create"

    post "/sessions" => "sessions#create"
  end 
end
