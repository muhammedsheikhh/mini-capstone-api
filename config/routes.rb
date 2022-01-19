Rails.application.routes.draw do
  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  get "/supplierinfo" => "supplierinfo#index"
  post "/supplierinfo" => "supplierinfo#create"
  get "/supplierinfo/:id" => "supplierinfo#show"
  patch "/supplierinfo/:id" => "supplierinfo#update"
  delete "/supplierinfo/:id" => "supplierinfo#destroy"

  get "/images" => "images#index"
  post "/images" => "images#create"
  get "/images/:id" => "images#show"
  patch "/images/:id" => "images#update"
  delete "/images/:id" => "images#destroy"
end
