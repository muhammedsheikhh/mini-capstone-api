Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/cartedproducts" => "carted_products#index"
  post "/cartedproducts" => "carted_products#create"

  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"

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
