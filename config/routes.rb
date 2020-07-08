Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/balls" => "balls#index"
    get "/balls/:id" => "balls#show"
    post "/balls" => "balls#create"
    patch "/balls/:id" => "balls#update"
    delete "/balls/:id" => "balls#destroy"
  end
end
