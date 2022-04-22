Rails.application.routes.draw do
  get "/food" => "food#index"
  get "/food/new" => "food#new"
  
  post "/food/create" => "food#create"
end
