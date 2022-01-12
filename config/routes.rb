Rails.application.routes.draw do
  get "/products", controller: "products", action: "product"
  get "/posh", controller: "products", action: "posh"
end
