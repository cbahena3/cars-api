Rails.application.routes.draw do
  get "/cars" => "cars#index"
  post "/cars" => "cars#create"
  get "/cars/:id" => "cars#show"
end
